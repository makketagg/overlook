require 'spec_helper'

module Overlook
  describe BitBuffer do
    describe 'bytes' do
      it 'should read bytes' do
        bytes = [219, 182, 109, 219, 182, 109]
        data  = bytes.pack('C*')
        io    = StringIO.new(data)

        buffer = BitBuffer.new(io)

        expect(buffer.bytes(2)).to eq([219.chr, 182.chr].join)
      end
    end

    describe 'bits' do
      it 'can read partial bytes' do
        # "1101101110110110110110111011011101101101101101"
        bytes = [219, 182, 109, 219, 182, 109]
        data  = bytes.pack('C*')
        io    = StringIO.new(data)

        buffer = BitBuffer.new(io)

        16.times do
          expect(buffer.bits(3)).to eq(3)
        end
      end

      it 'can read full bytes' do
        # "110011110011110011110011"
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
