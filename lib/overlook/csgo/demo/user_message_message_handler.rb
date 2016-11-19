require 'steamidlib'

module Overlook
  module Csgo
    module Demo
      class UserMessageMessageHandler
        include SteamIDs

        def initialize(parser)
          @parser = parser
        end

        def handle(message)
          user_message = ::Csgo::CSVCMsg_UserMessage.decode(message)

          case user_message.msg_type
          when ::Csgo::ECstrike15UserMessages::CS_UM_XpUpdate
            xp_update_message =  ::Csgo::CCSUsrMsg_XpUpdate.decode(user_message.msg_data)
            community_id = SteamID32.parse("[U:1:#{xp_update_message.data.account_id}]").to_steamID64.to_s

            xp_update = {
              community_id => {
                xp: xp_update_message.data.current_xp,
                lvl: xp_update_message.data.current_level,
                progress: xp_update_message.data.xp_progress_data.map do |item|
                  { category: item.xp_category, xp: item.xp_points }
                end
              }
            }

            @parser.emit(:xp_update, xp_update)
          when ::Csgo::ECstrike15UserMessages::CS_UM_ServerRankUpdate
            server_rank_update_message = ::Csgo::CCSUsrMsg_ServerRankUpdate.decode(user_message.msg_data)

            server_rank_update_message.rank_update.each do |update|
              # The account_id is used in the 'modern' steam format.
              # [U:1:account_id]
              community_id = SteamID32.parse("[U:1:#{update.account_id}]").to_steamID64.to_s

              rank_update_payload = { rank_change: update.rank_change.to_i, wins: update.num_wins,
                                        community_id: community_id, rank: update.rank_new }

              @parser.emit(:rank_update, rank_update_payload)
            end
          end
        end
      end
    end
  end
end
