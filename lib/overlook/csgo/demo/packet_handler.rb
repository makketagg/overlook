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

        def initialize(_parser)
          @parser = _parser
        end

        def handle(packet)
          reader = BitReader.new(packet.data)

          loop do
            message_type  = reader.var_int32
            message_size  = reader.var_int32

            if handler = handlers[message_type]
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
            MessageTypes::USER_MESSAGE_MESSAGE_ID => UserMessageMessageHandler.new(parser),
            MessageTypes::GAME_EVENT_LIST_MESSAGE_ID => GameEventListMessageHandler.new(parser),
            MessageTypes::GAME_EVENT_MESSAGE_ID => GameEventMessageHandler.new(parser),
            MessageTypes::ENCRYPTED_DATA_ID => EncryptedDataHandler.new(parser),
          }
        end
      end
    end
  end
end
