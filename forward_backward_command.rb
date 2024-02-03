# frozen_string_literal: true

# Concrete Command for Forward/Backward movement
class ForwardBackwardCommand < Command
  def initialize(receiver, direction)
    super()
    @receiver = receiver
    @direction = direction
  end

  def execute
    @receiver.forward_backward(@direction)
  end
end
