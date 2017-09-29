require('minitest/autorun')
require('minitest/rg')

require_relative('../dice')


class TestDice < MiniTest::Test

    def setup()
        @die1 = Die.new()
        @die2 = Die.new()
        @die3 = Die.new()
        @die4 = Die.new()
        @all_dice = [@die1.roll(), @die2.roll(), @die3.roll(), @die4.roll()]
        @dice = Dice.new(@all_dice)
    end

    def test_roll_one_dice()
        actual = @die1.roll()
        expected = 1..6
        assert_includes(expected, actual)
    end

    def test_roll_result()
        actual = @dice.roll_to_score()
        expected = 1..6666
        assert_includes(expected, actual)
    end

end
