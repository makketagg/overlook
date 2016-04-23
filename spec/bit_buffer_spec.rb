require 'spec_helper'

module Overlook
  describe BitBuffer do
    before do
      bytes = [1, 3]
      @bits = BitBuffer.new(StringIO.new(bytes.pack('C*')))
    end

    describe 'bits' do
      it 'can read partial bytes' do
        bytes = [219, 182, 109, 219, 182, 109]
        data  = bytes.pack('C*')
        io    = StringIO.new(data)

        buffer = BitBuffer.new(io)

        16.times do |time|
          expect(buffer.bits(3)).to eq(3)
        end
      end

      it 'can read full bytes' do
        bytes = [51, 51, 51, 51]
        data  = bytes.pack('C*')
        io    = StringIO.new(data)

        buffer = BitBuffer.new(io)

        8.times do |time|
          expect(buffer.bits(4)).to eq(3)
        end
      end
    end

    describe 'eof?' do
      before do
        io = StringIO.new([1, 3].pack('C*'))
        @bits = BitBuffer.new(io)
      end

      it 'returns true if end of stream' do
        @bits.bits(16)

        expect(@bits.eof?).to eq(true)
      end

      it 'returns false if not at end of stream' do
        @bits.bits(8)

        expect(@bits.eof?).to eq(false)
      end
    end
  end
end
