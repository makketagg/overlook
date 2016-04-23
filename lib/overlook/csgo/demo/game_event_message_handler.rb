module Overlook
  module Csgo
    module Demo
      class GameEventMessageHandler
        def initialize(parser)
          @parser = parser
        end

        def handle(message)
          game_event_message = CSVCMsg_GameEvent.decode(message)
          descriptor = @parser.descriptors[game_event_message.eventid]
          event_keys = game_event_message.keys || []

          keys = descriptor.keys
          key_reader = KeyReader.new
          attributes = event_keys.each_with_index.inject({}) do |memo, (key, index)|
            memo[keys[index].name] = key_reader.read(key)
            memo
          end

          case descriptor.name
          when 'player_connect', 'player_connect_full'
            # @parser.emit ...
          when 'player_hurt'
          when 'weapon_fire'
          when 'bomb_beginplant', 'bomb_abortplant', 'bomb_planted', 'bomb_defused', 'bomb_exploded'
          when 'round_end'
          when 'begin_new_match'
          end
        end
      end
    end
  end
end

