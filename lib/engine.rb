# frozen_string_literal: true

# Engine creates messeges to communicate with users and gets their inputs as well as running the game logic
module Engine
  def self.start
    @list = []

    while @list.empty?
      puts 'choose X or O'
      user_input = gets.chomp.to_s.upcase
      break if %w[X O].include?(user_input)

      print 'please try again '
    end

    @list[0] = user_input
    @list[1] = @list[0] == 'X' ? 'O' : 'X'

    @list
  end

  def self.play(_game, _board)
    game_status = 'continue'
    puts 'playing' until game_status == 'continue'
  end
end
