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
p1_sign = hash[0]

# Start the game
game = Game.new
Engine.play(game, board)

# thanks after exsiting (Place holder until UI)
puts 'Thank you for playing out implementation of Tic Tac Toe'
