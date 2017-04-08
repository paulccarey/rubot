module Rubot
  class Robot
    extend Forwardable

    attr_accessor :table, :x_position, :y_position, :compass

    def_delegators :@compass, :orientation=, :angle

    def initialize(table=Table.new)
      @table = table
      @compass = Compass.new
    end

    def place(x_position, y_position, orientation)
      raise Rubot::Errors::IncorrectPositionPlacedError unless table.position_valid?(x_position, y_position)
      @x_position, @y_position = x_position, y_position
      self.orientation = orientation
    end
  end
end
