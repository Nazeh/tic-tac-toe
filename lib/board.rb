# frozen_string_literal: true

# Board class initiate a 2D Array, and it can update it, fetch it
# and return the row, col and/or diagonals of any cell
class Board
  att_reader :board

  def initialize
    @board = [[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]]
  end

  def update(cell, sign)
    row = (cell - 1) / 3
    col = (cell - 1) % 3
    @board[row][col] = sign
  end
end

# testing
board = Board.new

board.update(4, 'X')

puts board.board.to_s
