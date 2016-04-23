module Overlook
  class BitBuffer
    def initialize(io)
      @io        = io
      @buffer    = 0
      @available = 0
    end

    def bytes(num)
      @io.read(num)
    end

    def bits(numbits)
      if numbits == 8 && @available == 0
        byte = refresh_buffer
        @available = 0
        return byte
      end

      numbits.times.reduce(0) do |result, index|
        refresh_buffer unless available_bits?
        result |= getbit << index
      end
    end

    def eof?
      @io.eof?
    end

    def skip(n)
      @io.seek(n, IO::SEEK_CUR)
    end

    private

    def getbit
      bit = (@buffer >> (8 - @available)) & 1
      @available = @available.pred
      bit
    end

    def available_bits?
      @available != 0
    end

    def refresh_buffer
      @buffer     = @io.getbyte
      @available  = 8
      @buffer
    end
  end
end
