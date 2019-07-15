# frozen_string_literal: true

require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'
require_relative '../lib/game.rb'

# Initiate a new board for UI
board = Board.new

# Initiate sudo user interface (Place holder until UI)
puts board.board[0].to_s
puts board.board[1].to_s
puts board.board[2].to_s

# Start the game
loop do
  game = Game.new
  board = Board.new
  Engine.play(game, board)
  puts 'do you want to play again? Y or N'
  break unless gets.chomp.downcase.to_s == 'y'
end
# thanks after exsiting (Place holder until UI)
puts 'Thank you for playing out implementation of Tic Tac Toe'
