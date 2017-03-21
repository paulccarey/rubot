module Rubot
  class Table

    attr_accessor :x_bound, :y_bound

    def initialize(x_bound=5, y_bound=5)
      @x_bound, @y_bound = x_bound, y_bound
    end
  end
end
