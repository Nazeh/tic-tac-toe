# frozen_string_literal: true

require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'
require_relative '../lib/game.rb'

# Start the game
loop do
  game = Game.new
  board = Board.new
  # Initiate sudo user interface (Place holder until UI)
  puts board.board[0].to_s
  puts board.board[1].to_s
  puts board.board[2].to_s

  Engine.play(game, board)
  puts "\nWould you like to play again? 'Y' or 'N'"
  break unless gets.chomp.downcase.to_s == 'y'
end
# thanks after exsiting (Place holder until UI)
puts "\nThank you for playing out implementation of Tic Tac Toe!"
