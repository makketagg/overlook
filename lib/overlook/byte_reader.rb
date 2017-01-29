require 'forwardable'

module Overlook
  # Reads bytes from a given IO object.
  class ByteReader
    extend Forwardable

    attr_reader :io

    def initialize(io)
      @io = io
    end

    def read_int64
      io.read(8).unpack("C*").each_with_index.reduce(0) do |sum, (byte, index)|
        sum + byte * (256 ** index)
      end
    end
    alias :int64 :read_int64

    def read_short
      io.read(2).unpack('S*').first
    end
    alias :short :read_short

    def string(len)
      io.read(len)
    end

    def seek(len, type = IO::SEEK_CUR)
      io.seek(len, type)
    end

    def float
      @io.read(4).unpack('<e').first
    end

    def byte
      io.read(1).ord
    end

    def char
      byte.chr
    end

    def signed_int32
      io.read(4).unpack('<l*').first
    end

    def signed_int16
      io.read(2).unpack('<s*').first
    end

    def var_int32
      var_int(4)
    end

    def var_int(max_len)
      _byte = 0
      count = 0
      result = 0

      loop do
        return result if count + 1 == max_len
        _byte = self.byte
        result |= (_byte & 0x7F) << (7 * count)
        count = count + 1
        break if _byte & 0x80 == 0
      end
      result
    end

    def_delegator :@io, :read, :read
    def_delegator :@io, :tell, :tell
    def_delegator :@io, :lineno, :lineno
    def_delegator :@io, :close, :close
    def_delegator :@io, :eof?, :eof?
  end
end
