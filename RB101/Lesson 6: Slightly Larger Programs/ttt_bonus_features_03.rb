# input: board hash and winning lines arrary
# output: integer
# rules:
#   explict:
#     To return a square where there is an immediate threat
#      meaning where 2 squares are filled in a row, column or
#      diagonal and third square is empty than return that square number.

# {1=>"X", 2=>"X", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "} == 3 
# {1=>"X", 2=>"X", 3=>"0", 4=>" ", 5=>" ", 6=>" ", 7=>"X", 8=>" ", 9=>" "} == 4 
# {1=>"X", 2=>"X", 3=>"0", 4=>"O", 5=>" ", 6=>" ", 7=>"X", 8=>" ", 9=>"X"} == 5 

# 1.  Evaluate first winning line
# 2.  Count X for those keys in board hash.
# 3.  If count is 2, find other number where key is not X
# 4.  If the value of that other key is empty, that return that number, otherwise
# 5.  evaluate other winning lines in the same way.
# 6.  If do not find any number fulfilling above condition return any number which is empty.


new_board1 = {1=>"X", 2=>"X", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
new_board2 = {1=>"X", 2=>"X", 3=>"0", 4=>" ", 5=>" ", 6=>" ", 7=>"X", 8=>" ", 9=>" "} 
new_board3 = {1=>"X", 2=>"X", 3=>"0", 4=>"O", 5=>" ", 6=>" ", 7=>"X", 8=>" ", 9=>"X"} 


WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def immediate_threat(brd)
  square = ''

  WINNING_LINES.each do |line|
    count = 0
    line.each do |num|
      count += 1 if brd[num] == 'X'
    end

    if count == 2
      line.each do |num1|
        return square = num1 if brd[num1]  == ' '
      end
    end
  end

  square
end

p immediate_threat(new_board1)
p immediate_threat(new_board2)
p immediate_threat(new_board3)
  
