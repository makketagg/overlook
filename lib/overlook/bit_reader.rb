module Overlook
  class BitReader
    def initialize(_buffer)
      @buffer = BitBuffer.new(_buffer)
    end

    def bytes(n)
      @buffer.bytes(n)
    end

    def bit
      bits(1)
    end

    def byte
      bits(8)
    end

    def skip(n)
      @buffer.skip(n)
    end

    def short
      ret  =  byte
      ret |=  byte << 8
    end

    def int32
      ret  =  byte
      ret |=  byte << 8
      ret |=  byte << 16
      ret |=  byte << 24
    end

    def eof?
      @buffer.eof?
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

    private

    def bits(numbits)
      @buffer.bits(numbits)
    end
  end
end
