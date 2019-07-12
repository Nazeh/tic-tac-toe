# frozen_string_literal: true

# Board class initiate a 2D Array, and it can update it, fetch it
# and return the row, col and/or diagonals of any cell
class Board
  attr_reader :board

  def initialize
    @board = [[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]]
  end

  def update(cell, sign)
    @board[row_index(cell)][col_index(cell)] = sign
  end

  def get_row_col_diagonals(cell)
    rcd = [get_row(cell), get_col(cell)]
  end

  private

  def row_index(cell)
    (cell - 1) / 3
  end

  def col_index(cell)
    (cell - 1) % 3
  end

  def get_row(cell)
    board[row_index(cell)]
  end

  def get_col(cell)
    col = []
    @board.each { |row| col << row[col_index(cell)] }
    col
  end
end

# test board.rb
board = Board.new

board.update(4, 'X')

puts board.get_row_col_diagonals(4).to_s
