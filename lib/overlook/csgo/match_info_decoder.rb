require 'stringio'

module Overlook
  module Csgo
    class MatchInfoDecoder
      include SteamIDs

      def initialize
      end

      def decode(io)
        match = CDataGCCStrike15_v2_MatchInfo.decode(io.read)

        decoded = {}
        decoded.merge!(extract_match_meta(match))
        decoded.merge!(extract_replay_info(match))
        decoded.merge!(extract_stats(match))
        decoded.merge!(extract_end_results(match))
        decoded
      end

      private

      # 1 - T
      # 2 - CT
      def extract_end_results(match)
        official_results = match.roundstatsall.last.to_hash

        winner = official_results[:match_result]

        results = {
          winner: winner,
          score: official_results[:team_scores],
          duration: official_results[:match_duration]
        }

        { results: results }
      end

      def extract_match_meta(match)
        {
          match: {
            matchid: match.matchid.to_s,
            matchtime: match.matchtime
          }
        }
      end

      def extract_replay_info(match)
        {
          replay: {
            ip:             match.watchablematchinfo.server_ip,
            port:           match.watchablematchinfo.tv_port,
            reservation_id: match.roundstatsall.last.reservationid.to_s
          }
        }
      end

      def extract_stats(match)
        stats = match.roundstatsall.map.with_index do |round, round_index|
          {
            round: round_index,
            timestamp: match.matchtime + round.match_duration,
            scores: extract_round_stats(round)
          }
        end

        { stats: stats }
      end

      def extract_round_stats(round)
        players = round.reservation.account_ids.collect! { |id| SteamID32.parse("[U:1:#{id}]").to_steamID64.to_s }

        raise RuntimeError,
              "Invalid player list, expected 10 players got #{players.count}" unless players.count == 10

        players.each.with_index.inject({}) do |memo, (community_id, player_index)|
          memo[community_id] ||= {}

          %w(enemy_kills enemy_headshots kills deaths assists scores mvps).each do |property|
            memo[community_id].merge!(property.to_sym => round.send(property)[player_index])
          end

          memo[community_id][:team] = player_index <= 4 ? 1 : 2

          memo
        end
      end
    end
  end
end
