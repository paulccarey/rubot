module Rubot
  module Errors
    class IncorrectPositionError < StandardError;
    end
    class IncorrectBoundError < StandardError
      def message
        'Table bounds must be greater than 0'
      end
    end
  end
end