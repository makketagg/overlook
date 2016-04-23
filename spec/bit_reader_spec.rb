require 'spec_helper'

module Overlook
  describe BitReader do
    describe 'var_int32' do
      it 'reads a varint' do
        cases = {
          [0] => 0,
          [1] => 1,
          [172, 2] => 300,
          [0x80, 0x1] => 128,
          [0x7f] => 127,
        }

        cases.each_pair do |data, value|
          io = StringIO.new(data.pack('C*'))
          @reader = BitReader.new(io)

          expect(@reader.var_int32).to eq(value)
        end
      end
    end

    describe 'byte' do
      it 'reads bytes from stream' do
        data = [1, 3, 5].pack('C*')
        io = StringIO.new(data)

        @reader = BitReader.new(io)

        @results = 3.times.collect do
          @reader.byte
        end

        expect(@results).to eq([1, 3, 5])
      end
    end

    describe 'short' do
      it 'reads a short off stream' do
        io = StringIO.new([1, 2].pack('C*'))
        stream = BitReader.new(io)

        result = stream.short

        expect(result).to eq(513)
      end
    end

    describe 'int32' do
      it 'reads a signed long off stream' do
        io = StringIO.new([0xFF, 0xFF, 0xFF, 0xFF].pack('C*'))
        stream = BitReader.new(io)

        expect(stream.int32).to eq(0xFFFFFFFF)
      end
    end

    describe 'bit' do
      it 'reads bits off stream' do
        stream = BitReader.new(StringIO.new([1, 2, 0xFF].pack('C*')))

        result = 24.times.collect do
          stream.bit
        end

        _one = [1, 0, 0, 0, 0, 0, 0, 0]
        _two = [0, 1, 0, 0, 0, 0, 0, 0]
        _ff  = [1, 1, 1, 1, 1, 1, 1, 1]

        expect(result).to eq(_one + _two + _ff)
      end

      it 'reads a bit from a stream' do 
        @reader = BitReader.new(StringIO.new([1].pack('C*')))

        result = 8.times.collect do
          @reader.bit
        end

        expect(result).to eq([1, 0, 0, 0, 0, 0, 0, 0])
      end

      it 'reads a bit across words' do
        @reader = BitReader.new(StringIO.new([1, 3].pack('C*')))

        result = 10.times.collect do
          @reader.bit
        end

        expect(result).to eq([1, 0, 0, 0, 0, 0, 0, 0, 1, 1])
      end
    end
  end
end
