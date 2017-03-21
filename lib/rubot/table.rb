module Rubot
  class Table

    attr_accessor :x_bound, :y_bound

    def initialize(x_bound=5, y_bound=5)
      @x_bound, @y_bound = x_bound, y_bound
    end

    def place(robot, x_position = nil, y_position = nil)
      unless x_position.between?(0, x_bound) && y_position.between?(0, y_bound)
        raise Rubot::Errors::IncorrectPositionError
      end
    end
  end
end
