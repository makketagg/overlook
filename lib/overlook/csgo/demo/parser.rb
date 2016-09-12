require 'wisper'

module Overlook
  module Csgo
    module Demo
      class Parser
        include Wisper::Publisher

        Exception = Class.new(StandardError)
        InvalidDemo = Class.new(Exception)

        attr_reader   :reader
        attr_reader   :parser_config
        attr_accessor :descriptors

        def initialize(io, parser_config = ParserConfig.new)
          @parser_config = parser_config
          @reader  = ByteReader.new(io)
          @header  = nil
          @descriptors = {}
        end

        def parse
          header
          packets
          done
        end

        def emit(event, data = {})
          broadcast(event.to_sym, data)
        end

        private

        def header
          emit(:header,
               Header.from_io(reader).to_hash)
        end

        def done
          emit(:done)
          true
        end

        def packets
          packet_handler = PacketHandler.new(self, @parser_config)

          loop do
            command = Command.from_io(reader)

            next if command.sync?
            break if command.stop?
            raise "Unknown Command: #{command.type}" if command.unknown?

            if command.packet?
              packet = PacketFactory.from_io(reader)
              packet_handler.handle(packet)
            elsif command.skipable?
              reader.read(reader.signed_int32)
            else
              raise "Unknown Command #{command.type}"
            end
          end
        end
      end
    end
  end
end
