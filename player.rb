require_relative('dice')

class Player

    def initialize(name, score)
        @name = name
        @score = score
    end

    def return_name()
        return @name
    end

    def roll_new(dice)
        @score = dice.roll_to_score()
        return @score
    end

    def score()
        return @score
    end




end
