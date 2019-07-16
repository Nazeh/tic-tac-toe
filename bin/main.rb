# frozen_string_literal: true

require_relative '../lib/game.rb'
require_relative '../lib/ui.rb'

# Initiate players
player1 = Player.new('player 1')
player2 = Player.new('player 2')

# initiate game
game = Game.new(player_1, player_2)

# Start the game
loop do
  # play_again?
  loop do
    puts 'Would you like to play again? (Y/N)'
    answer = gets.chomp
    break if %w[y n].include?(answer)
  end
  break unless answer == 'y'
end

# thanks after exsiting
ui.thanks
