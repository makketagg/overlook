require 'spec_helper'

module Overlook
  module Csgo
    module Demo
      describe Header do

        describe '.from_io' do
          it 'can create a header from io stream' do
            io = ByteReader.new(
              File.open(File.expand_path("#{fixture_directory}/header.bin"))
            )

            header = Header.from_io(io)

            expect(header.map_name).to eq('de_mirage')
            expect(header.ticks).to eq(189531)
          end

          it 'raises an error if invalid stamp' do
            io = ByteReader.new(
              File.open(File.expand_path("#{fixture_directory}/header.bin"))
            )

            expect(io).to receive(:read).with(8).and_return('bad-stamp')

            expect {
              Header.from_io(io)
            }.to raise_error(Header::InvalidHeader)
          end

          it 'raises an error if invalid server-name' do
            io = ByteReader.new(
              File.open(File.expand_path("./spec/fixtures/header.bin"))
            )

            expect(io).to receive(:read).with(8).and_return('HL2DEMO')
            expect(io).to receive(:signed_int32).exactly(5).times
            expect(io).to receive(:string).exactly(4).times.with(260).and_return('FAK')

            expect {
              Header.from_io(io)
            }.to raise_error(Header::InvalidHeader)
          end
        end

        describe 'map_name' do
          it 'returns the map name' do
            ticks = 1
            header = Header.new('de_mirage', ticks)
            expect(header.map_name).to eq('de_mirage')
          end

          it 'splits off null terminiating chars' do
            ticks = 1
            header = Header.new("de_mirage\x00", ticks)
            expect(header.map_name).to eq('de_mirage')
          end
        end
      end
    end
  end
end
