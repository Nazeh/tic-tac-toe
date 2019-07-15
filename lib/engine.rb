# frozen_string_literal: true

# Engine creates messeges to communicate with users and gets their inputs as well as running the game logic
module Engine
  def self.play(game, board, ui)
    initiate_players_signs(ui)
    game_status = 'continue'
    sign = @players_signs[0]
    @marked_cells = []

    while game_status == 'continue'
      # place holder until updating UI
      

      # update cell
      cell = prompt_cell(ui)
      @marked_cells << cell

      # update game status and switch player
      board.update(cell, sign)
      row_col_diagonals = board.get_row_col_diagonals(cell)
      game_status = game.status(row_col_diagonals, sign)
      sign = (@players_signs - [sign]).first

      # update UI
      ui.show
    end

    game_status ? ui.wins(sign) : ui.draw
  end

  def self.initiate_players_signs(ui)
    @players_signs = []

    while @players_signs.empty?
      ui.show
      puts "\nPlayer 1, Please choose a mark: 'X' or 'O' ?"
      user_input = gets.chomp.to_s.upcase
      break if %w[X O].include?(user_input)
    end

    @players_signs[0] = user_input
    @players_signs[1] = @players_signs[0] == 'X' ? 'O' : 'X'
  end

  def self.prompt_cell(ui)
    cell = nil
    while cell.nil?
      ui.show
      puts "\nPlayer #{@marked_cells.length % 2 + 1} turn"
      puts 'Where would you like to put your mark?'
      answer = gets.chomp.to_i
      cell = answer unless @marked_cells.include?(answer) || [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(answer) == false
    end
    cell
  end
end
