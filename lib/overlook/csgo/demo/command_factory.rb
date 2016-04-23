module Overlook
  module Csgo
    module Demo
      class CommandFactory
        def self.from_io(reader)
          cmd         = reader.byte
          tick        = reader.signed_int32
          slot        = reader.byte

          Command.new(cmd, tick, slot)
        end
      end
    end
  end
end
