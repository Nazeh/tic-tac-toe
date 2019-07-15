# frozen_string_literal: true

# UI module contains methods for showing the board, prompt messages and game status!
module UI
  def self.display_instructions
    puts "\n"
    puts '*************************************************'
    puts '******** Welcome To My Tic-Tac-Toe Game! ********'
    puts '*************************************************'
    puts '================================================='
    puts '********************* RULES *********************'
    puts 'Two players will take turns to mark the spaces on'
    puts 'a 3x3 grid. The player who succeeds in placing 3 '
    puts 'of their marks in a horizontal, vertical, or'
    puts 'diagonal row wins the game. When there are no    '
    puts 'more spaces left to mark, it is consider a draw. '
    puts 'To place a mark on the grid, type the number on  '
    puts 'the space you would like to mark! As shown below.'
    puts "Good luck! \n "
  end

  def self.display_board(board)
    board.board.each_with_index do |row, i|
      puts " #{row[0]} | #{row[1]} | #{row[2]}".center(50)
      puts ' ---+---+---'.center(50) unless i == 2
    end
  end

  def self.show(board)
    puts `clear`
    display_instructions
    display_board(board)
  end
end
