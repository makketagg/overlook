

module Overlook
  module Csgo
    module Demo
      class Command

        module TYPE
          SIGNON       = 1
          PACKET       = 2
          SYNCTICK     = 3
          CONSOLECMD   = 4
          USERCMD      = 5
          DATATABLES   = 6
          STOP         = 7
          CUSTOMDATA   = 8
          STRINGTABLES = 9
          LASTCMD      = STRINGTABLES
        end

        attr_accessor :type, :tick, :slot

        def initialize(type, tick, slot)
          @type = type
          @tick = tick
          @slot = slot
          @tick = 0 unless packet?
        end

        def type
          case @type
          when Command::TYPE::PACKET, Command::TYPE::SIGNON
            :packet
          when Command::TYPE::CUSTOMDATA, Command::TYPE::STRINGTABLES, Command::TYPE::DATATABLES
            :skipable
          when Command::TYPE::SYNCTICK
            :sync
          when Command::TYPE::STOP
            :stop
          else
            :unknown
          end
        end

        def unknown?
          type == :stop
        end

        def stop?
          type == :stop
        end

        def sync?
          type == :sync
        end

        def packet?
          type == :packet
        end

        def skipable?
          type == :skipable
        end
      end
    end
  end
end
