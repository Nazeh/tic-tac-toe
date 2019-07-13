# frozen_string_literal: true

# Engine creates messeges to communicate with users and gets their inputs as well as running the game logic
module Engine
  def self.start
    @hash = {}

    while @hash.empty?
      puts 'choose X or O'
      user_input = gets.chomp.to_s.upcase
      break if %w[X O].include?(user_input)

      print 'please try again '
    end

    @hash[:p1] = user_input
    @hash[:p2] = @hash[:p1] == 'X' ? 'O' : 'X'
  end

  def self.play
    # code
  end
end

# test

Engine.start
puts Engine.play
puts 'thanks for playing'