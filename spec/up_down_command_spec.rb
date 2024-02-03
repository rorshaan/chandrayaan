# frozen_string_literal: true

require './up_down_command'
require './lunar_command_receiver'

RSpec.describe UpDownCommand do
  let(:receiver) { LunarCommandReceiver.new }
  let(:up_command) { UpDownCommand.new(receiver, 'u') }
  let(:down_command) { UpDownCommand.new(receiver, 'd') }

  context 'when executing UpDownCommand' do
    it 'updates the current direction to the provided direction' do
      initial_direction = receiver.current_direction
      up_command.execute
      expect(receiver.current_direction).to eq('U')

      down_command.execute
      expect(receiver.current_direction).to eq('D')
    end
  end

  describe 'we have use the up down commands' do
    context 'according to EAST direaction' do
      it 'for up command ' do
        receiver.current_direction = 'E'
        up_command.execute
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'E'
        down_command.execute
        expect(receiver.current_direction).to eq('D')
      end
    end

    context 'according to WEST direaction' do
      it 'for up command ' do
        receiver.current_direction = 'W'
        up_command.execute
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'W'
        down_command.execute
        expect(receiver.current_direction).to eq('D')
      end
    end

    context 'according to NORTH direaction' do
      it 'for up command ' do
        receiver.current_direction = 'N'
        up_command.execute
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'N'
        down_command.execute
        expect(receiver.current_direction).to eq('D')
      end
    end

    context 'according to SOUTH direaction' do
      it 'for up command ' do
        receiver.current_direction = 'S'
        up_command.execute
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'S'
        down_command.execute
        expect(receiver.current_direction).to eq('D')
      end
    end
  end
end
