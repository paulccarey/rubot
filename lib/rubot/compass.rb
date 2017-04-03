module Rubot
  class Compass

    attr_accessor :angle

    def initialize(start_angle=0)
      @angle = start_angle
    end
  end
end
