require 'spec_helper'

module Overlook
  module Csgo
    module Demo
      describe Command do

        before do
          @tick = 0
          @slot = 0
        end

        describe '#packet?' do
          it 'returns true if command is a packet type' do
            cmd = Command.new(Command::TYPE::PACKET, @tick, @slot)
            expect(cmd.packet?).to eq(true)
          end

          it 'returns false if command is not a packet type' do
            cmd = Command.new(Command::TYPE::SYNCTICK, @tick, @slot)
            expect(cmd.packet?).to eq(false)
          end
        end

        describe 'stop?' do
          it 'returns true if command is a packet type' do
            cmd = Command.new(Command::TYPE::STOP, @tick, @slot)
            expect(cmd.stop?).to eq(true)
          end

          it 'returns false if command is not a packet type' do
            cmd = Command.new(Command::TYPE::PACKET, @tick, @slot)
            expect(cmd.stop?).to eq(false)
          end
        end

        describe 'unknown?' do
          it 'returns true if command is a packet type' do
            cmd = Command.new(-1, @tick, @slot)
            expect(cmd.unknown?).to eq(true)
          end

          it 'returns false if command is not a packet type' do
            cmd = Command.new(Command::TYPE::PACKET, @tick, @slot)
            expect(cmd.unknown?).to eq(false)
          end
        end

        describe 'sync?' do
          it 'returns true if command is a packet type' do
            cmd = Command.new(Command::TYPE::SYNCTICK, @tick, @slot)
            expect(cmd.sync?).to eq(true)
          end

          it 'returns false if command is not a packet type' do
            cmd = Command.new(Command::TYPE::PACKET, @tick, @slot)
            expect(cmd.sync?).to eq(false)
          end
        end

        describe 'skipable?' do
          [Command::TYPE::CUSTOMDATA, Command::TYPE::STRINGTABLES, Command::TYPE::DATATABLES].each do |t|
            it "returns true when the command is skipable" do
              cmd = Command.new(t, @tick, @slot)
              expect(cmd.skipable?).to eq(true)
            end
          end

          it 'returns false if command is not skippable' do
            cmd = Command.new(Command::TYPE::PACKET, @tick, @slot)
            expect(cmd.skipable?).to eq(false)
          end
        end

        describe '#type' do
          it 'returns :packet when the command is a packet' do
            cmd = Command.new(Command::TYPE::PACKET, @tick, @slot)
            expect(cmd.type).to eq(:packet)
          end

          it 'returns :packet when the command is a signon' do
            cmd = Command.new(Command::TYPE::SIGNON, @tick, @slot)
            expect(cmd.type).to eq(:packet)
          end

          [Command::TYPE::CUSTOMDATA, Command::TYPE::STRINGTABLES, Command::TYPE::DATATABLES].each do |t|
            it "returns :skipable when the command is a #{t}" do
              cmd = Command.new(t, @tick, @slot)
              expect(cmd.type).to eq(:skipable )
            end
          end

          it 'returns :sync when its a sync command' do
            cmd = Command.new(Command::TYPE::SYNCTICK, @tick, @slot)
            expect(cmd.type).to eq(:sync )
          end

          it 'returns :unknown if unknown command' do
              cmd = Command.new(-111, @tick, @slot)
              expect(cmd.type).to eq(:unknown )
          end
        end
      end
    end
  end
end
