module RaceBet
  class Race
    class << self
      def calculate_correct_place
        {0 => 15, 1 => 10, 2 => 5, 3 => 3, 4 => 1}
      end

      def score(guesses, winners)
        sum = 0
        guesses = guesses.take(5)
        guesses.each_with_index do |gues, index|
          if gues == winners[index]
            sum = sum + calculate_correct_place[index]
          end
        end
        sum
      end
    end

  end
end