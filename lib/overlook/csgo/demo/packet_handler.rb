module Overlook
  module Csgo
    module Demo
      # Determines which handler to use to read a packet and yields that
      # handler along with the message to the block
      class PacketHandler
        module MessageTypes
          USER_MESSAGE_MESSAGE_ID    = 23
          GAME_EVENT_MESSAGE_ID      = 25
          GAME_EVENT_LIST_MESSAGE_ID = 30
          ENCRYPTED_DATA_ID          = 35
        end

        attr_reader :parser

        def initialize(_parser, parser_config)
          @parser = _parser
          @parser_config = parser_config
        end

        def handle(packet)
          reader = BitReader.new(packet.data)

          loop do
            message_type  = reader.var_int32
            message_size  = reader.var_int32

            handler = handlers[message_type]
            if handler && handle?(handler)
              handler.handle(reader.bytes(message_size))
            else
              reader.skip(message_size)
            end

            break if reader.eof?
          end
        end

        private

        def handlers
          {
            ::Csgo::SVC_Messages::Svc_UserMessage   => UserMessageMessageHandler.new(parser),
            ::Csgo::SVC_Messages::Svc_GameEventList => GameEventListMessageHandler.new(parser),
            ::Csgo::SVC_Messages::Svc_GameEvent     => GameEventMessageHandler.new(parser),
            ::Csgo::SVC_Messages::Svc_EncryptedData => EncryptedDataHandler.new(parser),
          }
        end

        def handle?(handler)
          case handler
          when GameEventListMessageHandler, GameEventMessageHandler
            @parser_config.parse_game_events?
          when UserMessageMessageHandler
            @parser_config.parse_user_messages?
          when EncryptedDataHandler
            @parser_config.parse_encrypted_data?
          else
            true
          end
        end
      end
    end
  end
end
