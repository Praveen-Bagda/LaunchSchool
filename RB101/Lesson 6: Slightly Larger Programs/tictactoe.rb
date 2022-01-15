# 1.  Display the intial empty 3x3 board
# 2.  Ask the user to mark a square.
# 3.  Computer marks a square.
# 4.  Display the updated board state.
# 5.  If winner, display winner.
# 6.  If board is full, display tie.
# 7.  If neither winner nor board is full, got to #2
# 8.  Play again?
# 9.  If yes, go to #1
# 10. Good bye!

require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def dislay_board(brd)
  system 'clear'
  puts "You'are a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
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

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def immediate_threat(brd)
  WINNING_LINES.each do |line|
    count = 0
    line.each do |num|
      count += 1 if brd[num] == COMPUTER_MARKER
    end

    if count == 2
      line.each do |num1|
        return num1 if brd[num1]  == ' '
      end
    end
  end

  WINNING_LINES.each do |line|
    count = 0
    line.each do |num|
      count += 1 if brd[num] == PLAYER_MARKER
    end

    if count == 2
      line.each do |num1|
        return num1 if brd[num1]  == INITIAL_MARKER
      end
    end
  end

  return 5 if brd[5] == INITIAL_MARKER
  empty_squares(brd).sample
end

def computer_places_piece(brd)
  square = immediate_threat(brd)
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
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
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end

  nil
end

# def joinor(array, delimiter = ', ', last_joining_word = 'or')
#   string = ''
#   counter = 0
# 
#   string = "#{array[0]}" if array.size == 1
#   string = "#{array[0]} #{last_joining_word} #{array[1]}" if array.size == 2 
#     player_score += 1 if detect_winner(board) == 'Player'
#   if array.size >= 3
#     loop do
#       break if counter == array.size
#       string += "#{array[counter]}#{delimiter}" unless counter >= array.size - 1
#       string += "#{last_joining_word} #{array[counter]}" if counter == array.size - 1
#       counter += 1
#     end
#   end
# 
#   string
# end

def joinor(array, delimiter = ', ', last_joining_word = 'or')
  case array.size
  when 0 then ''
  when 1 then array.first.to_s 
  when 2 then array.join(" #{last_joining_word} ")
  else
    array[-1] = "#{last_joining_word} #{array.last}"
    array.join(delimiter)
  end
end

loop do
  player_score = 0
  computer_score = 0
  
  loop do 
    board = intialize_board
    first = ''

    dislay_board(board)

    loop do
      prompt "Who goes first? Type 1 for Player and 2 for Computer"
      first = gets.chomp.to_i
      break if first == 1 || first == 2
      prompt "Hmm..that doesn't look like a valid choice."  
    end

    if first == 1 
      loop do
        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        computer_places_piece(board)
        break if someone_won?(board) || board_full?(board)

        dislay_board(board)
      end
    elsif first == 2
      loop do
        computer_places_piece(board)
        break if someone_won?(board) || board_full?(board)
        dislay_board(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    end

    dislay_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    player_score += 1   if detect_winner(board) == 'Player'
    computer_score += 1 if detect_winner(board) == 'Computer'

    puts ""
    prompt "Player Score: #{player_score}, Computer Score: #{computer_score}"
    puts ""
    break if player_score == 5 || computer_score == 5
    prompt "Start next round: Press any key and enter or enter to continue:"
    next_round_answer = gets.chomp
  end

  prompt "Computer won 5 times!!" if computer_score == 5 
  prompt "Player won 5 times!!"   if player_score   == 5 
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tick Tac Toe! Good bye!"
