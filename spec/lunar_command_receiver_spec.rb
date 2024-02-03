# frozen_string_literal: true

require './main'

RSpec.describe LunarCommandReceiver do
  let(:receiver) { LunarCommandReceiver.new }

  describe 'we have use the forward backward commands' do
    context 'according to EAST direaction' do
      it 'for forward command on x axis' do
        receiver.current_direction = 'E'
        receiver.forward_backward('f')
        expect(receiver.x).to eq(1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end

      it 'for backward command x axis' do
        receiver.current_direction = 'E'
        receiver.forward_backward('b')
        expect(receiver.x).to eq(-1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to WEST direaction' do
      it 'for forward command on x axis' do
        receiver.current_direction = 'W'
        receiver.forward_backward('f')
        expect(receiver.x).to eq(-1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end

      it 'for forward command on x axis' do
        receiver.current_direction = 'W'
        receiver.forward_backward('b')
        expect(receiver.x).to eq(1)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to NORTH direaction' do
      it 'for forward command on y axis' do
        receiver.current_direction = 'N'
        receiver.forward_backward('f')
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(1)
        expect(receiver.z).to eq(0)
      end

      it 'for forward command on y axis' do
        receiver.current_direction = 'N'
        receiver.forward_backward('b')
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(-1)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to SOUTH direaction' do
      it 'for forward command on y axis' do
        receiver.current_direction = 'S'
        receiver.forward_backward('f')
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(-1)
        expect(receiver.z).to eq(0)
      end

      it 'for forward command on y axis' do
        receiver.current_direction = 'S'
        receiver.forward_backward('b')
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(1)
        expect(receiver.z).to eq(0)
      end
    end

    context 'according to UP direaction' do
      it 'for forward command on y axis' do
        receiver.current_direction = 'U'
        receiver.forward_backward('f')
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(1)
      end

      it 'for forward command on y axis' do
        receiver.current_direction = 'U'
        receiver.forward_backward('b')
        expect(receiver.x).to eq(0)
        expect(receiver.y).to eq(0)
        expect(receiver.z).to eq(-1)
      end
    end
  end

  describe 'we have use the left right commands' do
    context 'according to EAST direaction' do
      it 'for left command ' do
        receiver.current_direction = 'E'
        receiver.left_right('l')
        expect(receiver.current_direction).to eq('N')
      end

      it 'for right command' do
        receiver.current_direction = 'E'
        receiver.left_right('r')
        expect(receiver.current_direction).to eq('S')
      end
    end

    context 'according to WEST direaction' do
      it 'for left command ' do
        receiver.current_direction = 'W'
        receiver.left_right('l')
        expect(receiver.current_direction).to eq('S')
      end

      it 'for right command' do
        receiver.current_direction = 'W'
        receiver.left_right('r')
        expect(receiver.current_direction).to eq('N')
      end
    end

    context 'according to NORTH direaction' do
      it 'for left command ' do
        receiver.current_direction = 'N'
        receiver.left_right('l')
        expect(receiver.current_direction).to eq('W')
      end

      it 'for right command' do
        receiver.current_direction = 'N'
        receiver.left_right('r')
        expect(receiver.current_direction).to eq('E')
      end
    end

    context 'according to SOUTH direaction' do
      it 'for left command ' do
        receiver.current_direction = 'S'
        receiver.left_right('l')
        expect(receiver.current_direction).to eq('E')
      end

      it 'for right command' do
        receiver.current_direction = 'S'
        receiver.left_right('r')
        expect(receiver.current_direction).to eq('W')
      end
    end
  end

  describe 'we have use the up down commands' do
    context 'according to EAST direaction' do
      it 'for up command ' do
        receiver.current_direction = 'E'
        receiver.up_down('u')
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'E'
        receiver.up_down('d')
        expect(receiver.current_direction).to eq('D')
      end
    end

    context 'according to WEST direaction' do
      it 'for up command ' do
        receiver.current_direction = 'W'
        receiver.up_down('u')
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'W'
        receiver.up_down('d')
        expect(receiver.current_direction).to eq('D')
      end
    end

    context 'according to NORTH direaction' do
      it 'for up command ' do
        receiver.current_direction = 'N'
        receiver.up_down('u')
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'N'
        receiver.up_down('d')
        expect(receiver.current_direction).to eq('D')
      end
    end

    context 'according to SOUTH direaction' do
      it 'for up command ' do
        receiver.current_direction = 'S'
        receiver.up_down('u')
        expect(receiver.current_direction).to eq('U')
      end

      it 'for down command' do
        receiver.current_direction = 'S'
        receiver.up_down('d')
        expect(receiver.current_direction).to eq('D')
      end
    end
  end
end
