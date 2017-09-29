require('minitest/autorun')
require('minitest/rg')

require_relative('../game')

class TestGame < MiniTest::Test

    def setup()
        @player1 = Player.new("Player1", 0)
        @player2 = Player.new("Player2", 0)
        @players = [@player1, @player2]
        @game = Game.new(@players)
    end


end
