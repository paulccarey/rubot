module Rubot
  class Table

    attr_accessor :x_bound, :y_bound

    def initialize(x_bound=5, y_bound=5)
      raise Rubot::Errors::IncorrectBoundError if x_bound < 1 || y_bound < 1
      @x_bound, @y_bound = x_bound, y_bound
    end

    def position_valid?(x_position, y_position)
      if x_position.between?(0, x_bound) && y_position.between?(0, y_bound)
        true
      else
        false
      end
    end
  end
end
