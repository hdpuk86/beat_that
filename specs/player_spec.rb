require('minitest/autorun')
require('minitest/rg')

require_relative('../player')

class TestPlayer < MiniTest::Test

    def setup()
        
        @player1 = Player.new("Player1", 0)
        @player2 = Player.new("Player2", 0)
    end

    def test_last_roll()
        actual = @player1.roll_new()
        expected = 1..6666
        assert_includes(expected, actual)
    end

end
