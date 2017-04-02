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

    it 'requires bounds to be at least 1' do
      expect { Rubot::Table.new(1, 0) }.to raise_error(Rubot::Errors::IncorrectBoundError).with_message('Table bounds must be greater than 0')
      expect { Rubot::Table.new(0, 1) }.to raise_error(Rubot::Errors::IncorrectBoundError).with_message('Table bounds must be greater than 0')
    end
  end

  describe '#place' do

    let(:table) { Rubot::Table.new(5, 5) }

    context 'robot is placed at an invalid position' do

      it 'raises an IncorrectPositionError' do
        expect { table.place(:robot, 6, 6) }.to raise_error(Rubot::Errors::IncorrectPositionError)
      end
    end
  end
end
