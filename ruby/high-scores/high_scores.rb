=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end
class HighScores
    def initialize(scores)
        @scores = scores
    end

    def scores
        @scores
    end
  
    def latest
        @scores[-1]
    end
  
    def personal_best
        @scores.sort()[-1]
    end
  
    def personal_top_three
        if @scores.length() >= 3
            @scores.sort().reverse.slice(0,3)
        elsif @scores.length() == 2
            @scores.sort().reverse
        else
            @scores
        end
    end

    def latest_is_personal_best?
        if @scores.sort().reverse[0] == @scores[-1]
            true
        else
            false
        end
    end  
end