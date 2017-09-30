require('minitest/autorun')
require('minitest/rg')

require_relative('../player')

class TestPlayer < MiniTest::Test

  def setup()
    @player1 = Player.new("Player1", 0)
    @player2 = Player.new("Player2", 0)
    @players = [@player1, @player2]

    @dice = Dice.new()
  end

  def test_roll_new()
    actual = @players[0].roll_new(@dice)
    expected = 1111..6666
    assert_includes(expected, actual)
  end

  def test_update_score
    actual = @players[0].update_score(1111)
    expected = 1111
    assert_equal(expected, actual)
  end

end
