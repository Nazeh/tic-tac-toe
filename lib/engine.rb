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

  def self.play(game, board, player_signs)
    game_status = 'continue'
    sign = player_signs[0]
    @marked_cells = []

    while game_status == 'continue'
      cell = prompt_cell
      @marked_cells << cell
      row_col_diagonals = board.get_row_col_diagonals(cell)
      board.update(cell, sign)
      # place holder until updating UI
      puts board.board.to_s

      game_status = game.status(row_col_diagonals, sign)
      sign = (player_signs - [sign]).first
    end
  end

  def self.prompt_cell
    cell = nil
    while cell.nil?
      puts 'Please choose a cell'
      answer = gets.chomp.to_i
      cell = answer unless @marked_cells.include?(answer)
    end
    cell
  end
end
