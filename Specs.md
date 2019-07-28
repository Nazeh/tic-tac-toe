```console
Board
  #initialize
    will initiate readable 2D array attr @board
  #update
    will update any cell in @board with the given mark
  #cell_available?
    will return true if cell is empty
    will return false if cell is marked
  #row_col_diagonals
    When cell == 5
      will return row, col, and two diagonals
    When cell is even
      will return row col only
    When cell is 1 or 9
      will return row col and left to right diagonal
    When cell is 3 or 7
      will return row col and right to left diagonal

Game
  #initialize
    will take two Player instances and assign them to readable attr @player1 & @player2
    will initiate readable @status = "continue"
    will initiate readable @board and set it to new board
    when it is given 1 as first_player
      will add_mark X to @player1
      will add_mark O to @player2
      will initiate readable attr @current_player and set it to @player1
    when it is given 2 as first_player
      will add_mark X to @player2
      will add_mark O to @player1
      will initiate readable attr @current_player and set it to @player2
  #next_move
    will update the board at the given cell with @current_player mark
    when nine moves are played, with now winners
      will update @status to draw
    when row is completed
      will update @status to win
      will not switch @current_player
      will update @current_player score
    when col is completed
      will update @status to win
      will not switch @current_player
      will update @current_player score
    when diagonal is completed
      will update @status to win
      will not switch @current_player
      will update @current_player score

Player
  #initialize
    will set readable attr @player_name to any alphanumerical value
    will set readable attr @score to Zero
  #add_mark
    will set readable attr @mark to X or O
    will set readable attr @color according to @mark
  #add_score
    will increment attr @score

Ui
  #prompt_name
    will prompt the player for their name
    when no input given
      will return the given player_number
    when a name shorter than 8 character is given
      will return the given input
    when a name longer than 8 character is given
      will return the first 8 characters in the given input
  #prompt_first_player
    will ask players to chose who plays first with X mark
    when given 2
      will return Integer 2
    when given 1 or no input
      will return Integer 1 or zero
    when given Invalid input
      will ask for input again until given proper input
  #prompt_cell
    will ask current player to chose a cell to mark
    when given an empty cell number
      will return Integer of cell number
    when given Invalid cell number
      will ask for input again until given proper cell number
    when given a marked cell number
      will ask for input again until given an empty cell number
  #play_again?
    will ask players whether they want to play again?
    when given "n" or "N"
      will return false
    when given "y" or "Y" or empty answer
      will return true
    when given an invalid input
      will ask for input again until given an empty cell number
  #thanks?
    will output a thanks message
    will output author name message

Finished in 0.07284 seconds (files took 0.13888 seconds to load)
51 examples, 0 failures
