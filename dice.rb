require_relative('./die')

class Dice

    def initialize(dice)
        @dice = dice
    end

    def roll_to_score()
        @dice.sort!()
        @dice.reverse!()
        joined_dice = @dice.join()
        integer_dice = joined_dice.to_i()
        return integer_dice
    end

end
