module Rubot
  class Robot

    attr_accessor :table

    def initialize(table=Table.new)
      @table = table
    end
  end
end
