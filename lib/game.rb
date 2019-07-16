# frozen_string_literal: true

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/ui.rb'

# class Game checks for the rows,columns and diagonals to check if anyone has won or else
# tracks the count of turns and returns a draw if the bosrd is full before anyone wins.
class Game
  include Ui

  def initialize(player1, player2)
    @count = 0
    @board = Board.new
    @status = 'continue'
    @player1 = player1
    @player2 = player2
    assign_players_signs
  end

  private

  def status(row_col_diagonals, sign)
    @count += 1
    @status = 'win' if row_col_diagonals.any? { |element| element.count(sign) == 3 }
    @status = 'draw' if @count >= 9
  end

  def assign_players_signs
    @players_signs = []
    while @players_signs.empty?
      ui.show
      puts "\nPlayer 1, Please choose a mark: 'X' or 'O' ?"
      user_input = gets.chomp.to_s.upcase
      break if %w[X O].include?(user_input)
    end
    @players_signs[0] = user_input
    @players_signs[1] = @players_signs[0] == 'X' ? 'O' : 'X'
  end
end
