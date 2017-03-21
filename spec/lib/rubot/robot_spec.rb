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
  end
end
