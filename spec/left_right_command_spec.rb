# frozen_string_literal: true

require './left_right_command'
require './main'

RSpec.describe LeftRightCommand do
  let(:receiver) { LunarCommandReceiver.new }
  let(:left_command) { LeftRightCommand.new(receiver, 'l') }
  let(:right_command) { LeftRightCommand.new(receiver, 'r') }

  describe 'we have use the left right commands' do
    context 'according to EAST direaction' do
      it 'for left command ' do
        receiver.current_direction = 'E'
        initial_direction = receiver.current_direction
        left_command.execute
        expect(receiver.current_direction).to eq('N')

        right_command.execute
        expect(receiver.current_direction).to eq(initial_direction)
      end

      it 'for right command' do
        receiver.current_direction = 'E'
        right_command.execute
        expect(receiver.current_direction).to eq('S')
      end
    end

    context 'according to WEST direaction' do
      it 'for left command ' do
        receiver.current_direction = 'W'
        left_command.execute
        expect(receiver.current_direction).to eq('S')
      end

      it 'for right command' do
        receiver.current_direction = 'W'
        right_command.execute
        expect(receiver.current_direction).to eq('N')
      end
    end

    context 'according to NORTH direaction' do
      it 'for left command ' do
        receiver.current_direction = 'N'
        left_command.execute
        expect(receiver.current_direction).to eq('W')
      end

      it 'for right command' do
        receiver.current_direction = 'N'
        right_command.execute
        expect(receiver.current_direction).to eq('E')
      end
    end

    context 'according to SOUTH direaction' do
      it 'for left command ' do
        receiver.current_direction = 'S'
        left_command.execute
        expect(receiver.current_direction).to eq('E')
      end

      it 'for right command' do
        receiver.current_direction = 'S'
        right_command.execute
        expect(receiver.current_direction).to eq('W')
      end
    end
  end
end
