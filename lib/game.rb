# frozen_string_literal: true

# It takes output from board and compares the cells neighbours for similarities. It
# also outputs whether the game was a draw or a win or continue. It also tracks
# the count of turns and returns a draw if the game is over before anyone wins
# or  it checks for the rows,columns and diagonals to check if anyone has won #
class Game
  def initialize
    @count = 0
  end

  def status(row_col_diagonals, sign)
    @count += 1
    return "#{sign} won" if row_col_diagonals.any? { |element| element.count(sign) == 3 }
    return 'draw' if @count >= 9

    'continue'
  end
end

arr = [[1, 2, 3]]
test = Game.new
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
puts test.status(arr, 'X')
