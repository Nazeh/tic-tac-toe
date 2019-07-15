# frozen_string_literal: true

# Engine creates messeges to communicate with users and gets their inputs as well as running the game logic
module Engine
  def self.play(game, board)
    initiate_players_signs
    game_status = 'continue'
    sign = @players_signs[0]
    @marked_cells = []

    while game_status == 'continue'
      # update cell
      cell = prompt_cell
      @marked_cells << cell

      # update board
      board.update(cell, sign)

      # place holder until updating UI
      puts board.board[0].to_s
      puts board.board[1].to_s
      puts board.board[2].to_s

      # update game status and switch player
      row_col_diagonals = board.get_row_col_diagonals(cell)
      game_status = game.status(row_col_diagonals, sign)
      sign = (@players_signs - [sign]).first
    end

    puts game_status
  end

  def self.initiate_players_signs
    @players_signs = []

    while @players_signs.empty?
      puts 'choose X or O'
      user_input = gets.chomp.to_s.upcase
      break if %w[X O].include?(user_input)

      print 'please try again '
    end

    @players_signs[0] = user_input
    @players_signs[1] = @players_signs[0] == 'X' ? 'O' : 'X'
  end

  def self.prompt_cell
    cell = nil
    while cell.nil?
      puts 'Please choose a cell'
      answer = gets.chomp.to_i
      cell = answer unless @marked_cells.include?(answer) || [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(answer) == false
    end
    puts ' i returnd'
    cell
  end
end
