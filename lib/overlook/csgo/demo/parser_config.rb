module Overlook
  module Csgo
    module Demo
      class ParserConfig
        attr_reader :parse_game_events,
                    :parse_user_messages,
                    :parse_encrypted_data

        def initialize(options = {})
          @parse_game_events    = options.fetch(:parse_game_events,    true)
          @parse_user_messages  = options.fetch(:parse_user_messages,  true)
          @parse_encrypted_data = options.fetch(:parse_encrypted_data, true)
        end

        def parse_encrypted_data?
          @parse_encrypted_data
        end

        def parse_user_messages?
          @parse_user_messages
        end

        def parse_game_events?
          @parse_game_events
        end
      end
    end
  end
end
