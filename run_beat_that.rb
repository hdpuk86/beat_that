require_relative('game')
require_relative('player')
require_relative('dice')

dice = Dice.new()

player1 = Player.new("Player 1", 0)
player2 = Player.new("Player 2", 0)
players = [player1, player2]

game = Game.new(players, dice)

game.start()
game.take_turn()
