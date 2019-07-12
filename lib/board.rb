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
    rcd << get_diagonals(cell) unless cell.even?
    rcd
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

  def diagonals_helpers
    d_cells = [[1, 5, 9], [3, 5, 7]]

    ds = [[@board[0][0], @board[1][1], @board[2][2]], [@board[0][2], @board[1][1], @board[2][0]]]

    [d_cells, ds]
  end

  def get_diagonals(cell)
    diagonals = []

    d_cells = diagonals_helpers[0]

    ds = diagonals_helpers[1]

    diagonals << ds[0] if d_cells[0].include?(cell)
    diagonals << ds[1] if d_cells[1].include?(cell)
    diagonals
  end
end

# test board.rb
board = Board.new

board.update(5, 'X')

puts board.board.to_s

puts board.get_row_col_diagonals(5).to_s
