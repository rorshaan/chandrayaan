# frozen_string_literal: true

require './forward_backward_command'
require './lunar_command_receiver'

RSpec.describe ForwardBackwardCommand do
  let(:receiver) { LunarCommandReceiver.new }
  let(:forward_command) { ForwardBackwardCommand.new(receiver, 'f') }
  let(:backward_command) { ForwardBackwardCommand.new(receiver, 'b') }

  describe 'we have use the forward backward commands' do
    context 'according to EAST direaction' do
      it 'for forward command on x axis' do
        receiver.current_direction = 'E'
        forward_command.execute
        expect(receiver.x).to eq(1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end

      it 'for backward command x axis' do
        receiver.current_direction = 'E'
        backward_command.execute
        expect(receiver.x).to eq(-1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to WEST direaction' do
      it 'for forward command on x axis' do
        receiver.current_direction = 'W'
        forward_command.execute
        expect(receiver.x).to eq(-1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end

      it 'for forward command on x axis' do
        receiver.current_direction = 'W'
        backward_command.execute
        expect(receiver.x).to eq(1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to NORTH direaction' do
      it 'for forward command on y axis' do
        receiver.current_direction = 'N'
        forward_command.execute
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(1)
        expect(receiver.z).to eq(0)
      end

      it 'for forward command on y axis' do
        receiver.current_direction = 'N'
        backward_command.execute
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(-1)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to SOUTH direaction' do
      it 'for forward command on y axis' do
        receiver.current_direction = 'S'
        forward_command.execute
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(-1)
        expect(receiver.z).to eq(0)
      end

      it 'for forward command on y axis' do
        receiver.current_direction = 'S'
        backward_command.execute
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(1)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to UP direaction' do
      it 'for forward command on y axis' do
        receiver.current_direction = 'U'
        forward_command.execute
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(1)
      end

      it 'for forward command on y axis' do
        receiver.current_direction = 'U'
        backward_command.execute
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(-1)
      end
    end
  end
end
