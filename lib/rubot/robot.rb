module Rubot
  class Robot

    attr_accessor :table, :x_position, :y_position

    def initialize(table=Table.new)
      @table = table
    end

    def place(x_position, y_position, orientation)
      raise Rubot::Errors::IncorrectPositionPlacedError unless table.position_valid?(x_position, y_position)
    end
  end
end
