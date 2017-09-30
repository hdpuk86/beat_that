require_relative('player')
require_relative('dice')

class Game

  def initialize(players, dice)
    @win = false
    @players = players
    @dice = dice
  end

  def start()
    puts "BEAT THAT!"
    puts
    puts "Press enter to play"
    gets.chomp
  end

  def take_turn()
    while !@win
      current = @players[0]
      last = @players[1]
      puts
      puts "#{current.name()}, it's your go, press enter to roll"
      gets.chomp
      result = current.roll_new(@dice)
      puts "#{current.name} has rolled #{result}"
      current.update_score(result)
      check_score()
    end
  end

  def check_score()
    current = @players[0]
    last = @players[1]
    if current.score() > last.score()
      @players.rotate!()
    else
      @win = true
      puts
      puts "Woo! #{last.name} has Beat it!"
    end
  end
end
