module Overlook
  module Csgo
    module Demo
      # Allows creation of Packet objects
      class PacketFactory
        COMMAND_INFO_SIZE = 160.freeze

        # Creates a packet from an io stream.
        #
        # @return [Packet] The created packet object
        def self.from_io(io)
          command_info = io.read(COMMAND_INFO_SIZE)
          size         = io.signed_int32
          data         = StringIO.new(io.read(size))

          Packet.new(size,
                      data, command_info)
        end
      end
    end
  end
end
