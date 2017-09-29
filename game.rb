

class Game

    def initialize(players, dice)
        @win = false
        @players = players
        @dice = dice
    end

    def take_turn
        while !@win
            result1 = @players[0].roll_new(@dice)
            puts "#{@players[0].name} has rolled #{result1}"
            check_score(result1)
        end
        puts "#{@players[0]} has Beat it!"
    end


    def check_score(result1)
        if result1 < @players[1].score
            @won = true
        else
            @players.rotate()
        end
    end
end
