require 'spec_helper'

describe Rubot::Table do

  describe '.new' do

    it 'initializes with the provided x and y bounds' do
      table = Rubot::Table.new(9, 8)
      expect(table.x_bound).to eq(9)
      expect(table.y_bound).to eq(8)
    end

    it 'defaults the x and y bounds to 5' do
      table = Rubot::Table.new
      expect(table.x_bound).to eq(5)
      expect(table.y_bound).to eq(5)
    end

    it 'requires bounds to be at least 0' do
      expect { Rubot::Table.new(-1, 0) }.to raise_error(Rubot::Errors::IncorrectBoundError).with_message('Minimum table bound value is 0')
      expect { Rubot::Table.new(0, -1) }.to raise_error(Rubot::Errors::IncorrectBoundError).with_message('Minimum table bound value is 0')
    end
  end

  describe '#position_valid?' do

    subject do
      table = Rubot::Table.new(5, 5)
      table.position_valid?(*position)
    end

    context 'position is not valid because it is negative' do

      context 'only x bound is negative' do

        let(:position) { [-1, 1] }

        it { is_expected.to be_falsey }
      end

      context 'only y bound is negative' do

        let(:position) { [1, -1] }

        it { is_expected.to be_falsey }
      end
    end

    context 'position is not valid because it is out of max bounds' do

      context 'only x bound is out of max bounds' do

        let(:position) { [6, 1] }

        it { is_expected.to be_falsey }
      end

      context 'only y bound is out of max bounds' do

        let(:position) { [1, 6] }

        it { is_expected.to be_falsey }
      end
    end

    context 'position is valid' do

      context 'position is on minimum of bounds' do
        let(:position) { [0, 0] }

        it { is_expected.to be_truthy }
      end

      context 'position is in middle of bounds' do
        let(:position) { [3, 3] }

        it { is_expected.to be_truthy }
      end

      context 'position is at max of bounds' do
        let(:position) { [5, 5] }

        it { is_expected.to be_truthy }
      end
    end
  end
end
