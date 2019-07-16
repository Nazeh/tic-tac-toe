# frozen_string_literal: true

# class player stores player name, chosen mark, color and score
class Player
  attr_reader :name
  attr_reader :mark
  attr_reader :color
  attr_reader :score

  def initialize(name, mark = 'X', color = 'red', score = 0)
    @name  = name
    @mark  = mark
    @color = color
    @score = score
  end

  def add_score
    @score += 1
  end
end
