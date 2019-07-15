# frozen_string_literal: true

require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'
require_relative '../lib/game.rb'
require_relative '../lib/ui.rb'

# Start the game
loop do
  game = Game.new
  board = Board.new
  UI.show(board)

  Engine.play(game, board)
  puts "\nWould you like to play again? 'Y' or 'N'"
  break unless gets.chomp.downcase.to_s == 'y'
end

# thanks after exsiting (Place holder until UI)
UI.thanks
