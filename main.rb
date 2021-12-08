require_relative 'game'
require_relative 'box'
require_relative 'die'

NUM_TILES = 9
NUM_DICE = 2
NUM_SIDES = 6

dice = (1..NUM_DICE).map { |i| Die.new(NUM_SIDES) }
box = Box.new(NUM_TILES)
box.set_tiles
game = Game.new(box, dice)

puts Game::WELCOME_MESSAGE
 game.start!
game.play until game.over?
puts game.results
