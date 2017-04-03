require 'spec_helper'

describe Rubot::Robot do

  describe '.new' do

    it 'initializes with the provided table' do
      table = Rubot::Table.new
      robot = Rubot::Robot.new(table)
      expect(robot.table).to eq(table)
    end

    it 'initializes and creates a new table if one is not provided' do
      allow(Rubot::Table).to receive(:new) { :table }
      robot = Rubot::Robot.new
      expect(robot.table).to eq(:table)
    end

    it 'initializes a new compass' do
      robot = Rubot::Robot.new
      expect(robot.compass).to be_instance_of(Rubot::Compass)
    end
  end

  describe '#place' do

    context 'robot is placed at an invalid position' do

      it 'raises an IncorrectPositionError' do
        table = Rubot::Table.new(5, 5)
        robot = Rubot::Robot.new(table)
        expect { robot.place(6, 6, 'NORTH') }.to raise_error(Rubot::Errors::IncorrectPositionPlacedError).with_message('Robot was placed at an incorrect position')
      end
    end

    context 'robot is placed at a valid position' do


    end
  end
end
