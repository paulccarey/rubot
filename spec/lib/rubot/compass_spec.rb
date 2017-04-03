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

  describe 'orientation=' do

    context 'valid orientation provided' do

      let(:compass) { Rubot::Compass.new(360) }

      context 'symbol provided as input' do

        it 'sets angle to 0 for :north' do
          expect { compass.orientation=:north }.to change { compass.angle }.to(0)
        end

        it 'sets angle to 90 for :east' do
          expect { compass.orientation=:east }.to change { compass.angle }.to(90)
        end

        it 'sets angle to 180 for :south' do
          expect { compass.orientation=:south }.to change { compass.angle }.to(180)
        end

        it 'sets angle to 270 for :west' do
          expect { compass.orientation=:west }.to change { compass.angle }.to(270)
        end
      end
    end
  end
end
