# frozen_string_literal: true

# class Game checks for the rows,columns and diagonals to check if anyone has won or else
# tracks the count of turns and returns a draw if the bosrd is full before anyone wins.
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

# test

arr = [[1, 2, 3]]
game = Game.new
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
puts game.status(arr, 'X')
