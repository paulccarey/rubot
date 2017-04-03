require 'spec_helper'

describe Rubot::Compass do

  describe '.new' do

    it 'initializes with the provided start angle' do
      compass = Rubot::Compass.new(45)
      expect(compass.angle).to eq(45)
    end

    it 'initializes with a start angle of 0 by default' do
      compass = Rubot::Compass.new
      expect(compass.angle).to eq(0)
    end
  end
end
