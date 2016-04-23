
module Overlook
  module Csgo
    module Demo
      class Packet
        attr_accessor :size, :data, :command_info

        def initialize(size, data, command_info)
          @size         = size
          @data         = data
          @command_info = command_info
        end
      end
    end
  end
end
