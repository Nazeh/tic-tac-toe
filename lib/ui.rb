# frozen_string_literal: true

# UI module contains methods for showing the board, prompt messages and game status!
module Ui
  module_function

  def display
    puts `clear`
    display_instructions
    display_board
    display_score
  end

  def draw
    game_over
    puts '*************************************************'
    puts "****************  It's a Draw!  *****************"
    puts '*************************************************'
  end

  def wins(player = 1)
    game_over
    puts '*************************************************'
    puts "***************  PLayer #{player} Wins  *****************"
    puts '*************************************************'
  end

  def play_again?; end

  def thanks
    puts "\n*************************************************"
    puts 'Thanks for playing out Tic Tac Toe Implementation'
    puts "*************************************************\n"
  end

  private

  def display_instructions
    puts "\n"
    puts '******** Welcome To Our Tic-Tac-Toe Game! ********'
    puts '**************************************************'
    puts '=================================================='
    puts '**************************************************'
    puts 'Two players will take turns to mark the spaces on '
    puts 'a 3x3 grid. The player who succeeds in placing 3  '
    puts 'of their marks in a horizontal, vertical, or      '
    puts 'diagonal row wins the game. When there are no     '
    puts 'more spaces left to mark, it is consider a draw.  '
    puts 'To place a mark on the grid, type the number on   '
    puts 'the space you would like to mark! As shown below. '
    puts "Good luck! \n "
  end

  def game_over
    puts "\n"
    puts '*************************************************'
    puts '****************    GAME OVER    ****************'
    puts '*************************************************'
  end

  def display_board
    @board.board.reverse.each_with_index do |row, i|
      puts "#{row[0]} | #{row[1]} | #{row[2]}".center(50)
      puts '---+---+---'.center(50) unless i == 2
    end
  end

  def display_score
    puts "\n"
    puts ' Score '.center(50, '=')
    puts ' Player 1 : 1  Player 2 : 0 '.center(50, '=')
  end

  def prompt(message)
    display
    puts message
    gets.chomp.downcase.to_s
  end
end
