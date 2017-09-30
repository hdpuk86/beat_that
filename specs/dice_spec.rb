require('minitest/autorun')
require('minitest/rg')

require_relative('../dice')

class TestDice < MiniTest::Test

    def setup()
        @dice = Dice.new()
    end

    def test_roll()
        actual = @dice.roll()
        expected = 4
        assert_equal(expected, actual.length())
    end

    def test_roll_to_score()
        roll = [2, 6, 3, 1]
        actual = @dice.roll_to_score(roll)
        expected = 6321
        assert_equal(expected, actual)
    end

end
