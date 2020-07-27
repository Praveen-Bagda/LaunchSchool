require 'pry'
require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # coloums
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_TURN = "computer"

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def joinor(array, delimiter = ',', last_delimiter = 'or')
  string = ''
  counter = 0
  loop do
    break if counter >= array.size - 1
    string << array[counter].to_s
    counter += 1
    string << delimiter + ' ' unless counter >= array.size - 1
  end

    string << ' ' + last_delimiter + ' ' if array.size > 1
    string << array.last.to_s if array.size > 0
    string
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = 0
  # binding.pry
  WINNING_LINES.each do |ary|
    count = 0
    ary.each do |k|
      count += 1 if brd[k] == COMPUTER_MARKER
    end

    if count == 2
      ary.each do |k|
        square = k if brd[k] == ' '
        break unless square == 0
      end
    end
    break unless square == 0
  end
  
  if square == 0
    WINNING_LINES.each do |ary|
      count = 0
      ary.each do |k|
        count += 1 if brd[k] == PLAYER_MARKER
      end

      if count == 2
        ary.each do |k|
          square = k if brd[k] == ' '
          break unless square == 0
        end
      end
      break unless square == 0
    end
  end

  square = 5 if brd[5] == ' '
  square = empty_squares(brd).sample if square == 0
  brd[square] = COMPUTER_MARKER
end

def board_full(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end

    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  player_score = 0
  computer_score = 0
  
  loop do   
    board = initialize_board
    if FIRST_TURN == "choose"
      prompt "Who moves first?"
      answer1 = gets.chomp
    end

    loop do
      if answer1 == 'computer' || FIRST_TURN == 'computer'
        computer_places_piece!(board)
        break if someone_won?(board) || board_full(board)

        display_board(board)
        
        player_places_piece(board)
        break if someone_won?(board) || board_full(board)
      elsif answer1 == 'player' || FIRST_TURN == 'player'
        display_board(board)
        
        player_places_piece(board)
        break if someone_won?(board) || board_full(board)

        computer_places_piece!(board)
        break if someone_won?(board) || board_full(board)
      end
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    # display_board(board)

    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    end

    prompt "Player score: #{player_score}, Computer score: #{computer_score}"
    if player_score == 5
      prompt "Player won 5 times!"
      break
    elsif computer_score == 5
      prompt "Computer won 5 times!"
      break
    end
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good Bye!"
