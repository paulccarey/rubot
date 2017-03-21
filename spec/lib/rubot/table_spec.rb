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
  end
end
