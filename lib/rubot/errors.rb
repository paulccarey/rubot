module Rubot
  module Errors
    class IncorrectPositionPlacedError < StandardError
      def message
        'Robot was placed at an incorrect position'
      end
    end
    class IncorrectBoundError < StandardError
      def message
        'Table bounds must be greater than 0'
      end
    end
  end
end