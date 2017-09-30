require('minitest/autorun')
require('minitest/rg')

require_relative('../game')
require_relative('../player')
require_relative('../dice')

class TestGame < MiniTest::Test

  def setup()
    @player1 = Player.new("Player1", 0)
    @player2 = Player.new("Player2", 0)
    @players = [@player1, @player2]

    @dice = Dice.new()

    @game = Game.new(@players, @dice)
  end

  def test_take_turn()
    @game.take_turn()
    actual = @players[0].score()
    expected = 0
    refute_equal(expected, actual)
  end

end
