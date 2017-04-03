module Rubot
  class Compass

    attr_accessor :angle

    ORIENTATION_MAP = {
        north: 0,
        east:  90,
        south: 180,
        west:  270
    }

    def initialize(start_angle=0)
      @angle = start_angle
    end

    def orientation=(new_orientation)
      @angle =  ORIENTATION_MAP[new_orientation]
    end
  end
end
