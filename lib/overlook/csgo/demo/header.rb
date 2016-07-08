
module Overlook
  module Csgo
    module Demo
      class Header
        InvalidHeader = Class.new(StandardError)

        MAX_STRING_LENGTH = 260.freeze

        attr_reader :map_name, :ticks

        def initialize(map_name, ticks)
          raise ArgumentError 'map_name can\'t be nil' if map_name.nil?
          @map_name = map_name
          @ticks = ticks
        end

        def to_hash
          { map_name: map_name }
        end

        def map_name
          @map_name.split("\x00").first
        end

        def self.from_io(reader)
          stamp            = reader.read(8)
          demo_protocol    = reader.signed_int32
          network_protocol = reader.signed_int32
          server_name      = reader.string(MAX_STRING_LENGTH)
          client_name      = reader.string(MAX_STRING_LENGTH)
          map_name         = reader.string(MAX_STRING_LENGTH)
          game_directory   = reader.string(MAX_STRING_LENGTH)
          playtime         = reader.float
          ticks            = reader.signed_int32
          frames           = reader.signed_int32
          signon_length    = reader.signed_int32

          raise InvalidHeader, "#{self.class.name} only supports HL2DEMO, got #{stamp}" if stamp !~ /hl2demo/i
          raise InvalidHeader, "#{self.class.name} only supports Valve demo files." if server_name !~ /valve/i

          new(map_name, ticks)
        end
      end
    end
  end
end
