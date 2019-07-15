# frozen_string_literal: true

require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'
require_relative '../lib/game.rb'

# Initiate a new board for UI
board = Board.new

# Initiate sudo user interface (Place holder until UI)
puts board.board.to_s

# Initiate the game with user input
player_signs = Engine.start


# Start the game
game = Game.new
Engine.play(game, board, player_signs)

# thanks after exsiting (Place holder until UI)
puts 'Thank you for playing out implementation of Tic Tac Toe'
