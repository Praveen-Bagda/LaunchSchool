# Rock, Paper, Scissors is a two-player game where each player chooses
# one of three possbile moves: rock, paper, or scissors. The choses moves
# will then be compared to see who wins, according to the following rules:

# - rock beats scissors
# - scissors beat paper
# - paper beat rock

# If the players chose the same move, then it's a tie.

# Nouns: player, move, rule
# Verbs: choose, compare

# Player
# - choose
# Move
# Rule

# - compare

class Move
  VALUES = ['rock', 'paper', 'scissors']

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?)
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, or scissors:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

# Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper Scissors. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "Its a tie!"
    end
  end

  # case human.move
  # when 'rock'
  #   puts "It's a tie!" if computer.move == 'rock'
  #   puts "#{human.name} won!" if computer.move == 'scissors'
  #   puts "#{computer.name} won!" if computer.move == 'paper'
  # when 'paper'
  #   puts "It's a tie!" if computer.move == 'paper'
  #   puts "#{human.name} won!" if computer.move == 'rock'
  #   puts "#{computer.name} won!" if computer.move == 'scissors'
  # when 'scissors'
  #   puts "It's a tie!" if computer.move == 'scissors'
  #   puts "#{human.name} won!" if computer.move == 'paper'
  #   puts "#{computer.name} won!" if computer.move == 'rock'
  # end

  def play_again?
    answer = nil

    loop do
      puts "Would you like to play again (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def play
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      break unless play_again?
    end

    display_goodbye_message
  end
end

RPSGame.new.play
