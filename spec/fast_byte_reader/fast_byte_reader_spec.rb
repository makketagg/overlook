require 'spec_helper'
require 'fast_byte_reader'

module Overlook
  describe FastByteReader do
    describe "creation" do
      it "is instantiated with an io" do
        file = Tempfile.open("test") do |file|
          FastByteReader.new(file)
        end
      end

      it "raises an error if instantiated with non io object" do
        expect {
          FastByteReader.new("test")
        }.to raise_error(TypeError)
      end

      it "can access the io" do
        fbr = Tempfile.open("test") do |file|
          fbr = FastByteReader.new(file)
          expect(fbr.io).to eq(file)
        end
      end
    end

    describe "eof?" do
      it "returns true when at eof" do
        io = StringIO.new("")
        fbr = FastByteReader.new(io)

        expect(fbr.eof?).to eq(true)
      end

      it "returns false when not at eof" do
        io = StringIO.new("blah")
        fbr = FastByteReader.new(io)

        expect(fbr.eof?).to eq(false)
      end
    end

    describe "seek" do
      it "can seek" do
        io = StringIO.new([1, 2, 3].pack("C*"))
        fbr = FastByteReader.new(io)
        fbr.seek(1)

        expect(fbr.read(2)).to eq([2, 3].pack('C*'))
      end
    end

    describe "read" do
      it "can read bytes from the IO" do
        io = StringIO.new([1, 2, 3].pack("C*"))
        fbr = FastByteReader.new(io)

        expect(fbr.read(2)).to eq([1, 2].pack('C*'))
        expect(fbr.read(1)).to eq([3].pack('C*'))
      end
    end

    describe "byte" do
      it "can read bytes" do
        io = StringIO.new([1, 2, 3].pack("C*"))
        fbr = FastByteReader.new(io)

        expect(fbr.byte).to eq(1)
        expect(fbr.byte).to eq(2)
        expect(fbr.byte).to eq(3)
      end
    end

    describe "var_int32" do
      it "can read variable integers" do
        cases = {
          [0] => 0,
          [1] => 1,
          [172, 2] => 300,
          [0x80, 0x1] => 128,
          [0x7f] => 127,
        }

        cases.each_pair do |key, value|
          fbr = FastByteReader.new(StringIO.new(key.pack("C*")))

          expect(fbr.var_int32).to eq(value)
        end
      end
    end
  end
end
