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

  describe '#orientation=' do

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

      context 'text provided as input' do

        context 'text is lowercase' do

          it 'converts the key to a symbol and sets the correct angle' do
            expect { compass.orientation='north' }.to change { compass.angle }.to(0)
          end
        end

        context 'text is uppercase' do

          it 'converts the key to a lowercase symbol and sets the correct angle' do
            expect { compass.orientation='NORTH' }.to change { compass.angle }.to(0)
          end
        end

        context 'text is mixed case (CrAzY CaSe!)' do

          it 'converts the key to a lowercase symbol and sets the correct angle' do
            expect { compass.orientation='NoRtH' }.to change { compass.angle }.to(0)
          end
        end
      end
    end
  end

  describe '#left' do

    let(:compass) { Rubot::Compass.new(starting_angle) }

    context 'the angle is starting from north' do

      let(:starting_angle) { 0 }

      it 'rotates to a western angle of 270 degrees' do
        expect { compass.left }.to change { compass.angle }.to(270)
      end
    end

    context 'the angle is starting from west' do

      let(:starting_angle) { 270 }

      it 'rotates to a southern angle of 180 degrees' do
        expect { compass.left }.to change { compass.angle }.to(180)
      end
    end

    context 'the angle is starting from south' do

      let(:starting_angle) { 180 }

      it 'rotates to a eastern angle of 90 degrees' do
        expect { compass.left }.to change { compass.angle }.to(90)
      end
    end

    context 'the angle is starting from east' do

      let(:starting_angle) { 90 }

      it 'rotates to a northern angle of 0 degrees' do
        expect { compass.left }.to change { compass.angle }.to(0)
      end
    end
  end
end
