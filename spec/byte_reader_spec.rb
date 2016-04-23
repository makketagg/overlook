require 'spec_helper'

module Overlook
  describe ByteReader do
    describe 'read_int64' do
      before do
        io = StringIO.new("9\x00\x00\x80\x02\xE8\x1A+")

        @reader = described_class.new(io)
      end

      it 'has an int64 alias' do
        expect(@reader.int64).to eq(3106049990460440633)
      end

      it 'can read 64 bit integers' do
        expect(@reader.read_int64).to eq(3106049990460440633)
      end
    end


    describe 'read_short' do
      before do
        io = StringIO.new("B.")

        @reader = described_class.new(io)
      end

      it 'has an short alias' do
        expect(@reader.short).to eq(11842)
      end

      it 'can read 64 bit integers' do
        expect(@reader.read_short).to eq(11842)
      end
    end
  end
end
