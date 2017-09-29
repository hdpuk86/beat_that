require('minitest/autorun')
require('minitest/rg')

require_relative('../die')

class TestDie < Minitest::Test

    def setup()
        @die = Die.new()
    end

    def test_roll_one_dice()
        actual = @die.roll()
        expected = 1..6
        assert_includes(expected, actual)
    end


end
