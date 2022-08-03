class GuessingGame
  def initialize
    @number_of_guesses = 7
    @answer = (1..100).to_a.sample
    @guess = nil
  end

  def play
    loop do
      puts "You have #{@number_of_guesses} guesses remaining."
      validate_guess
      @number_of_guesses -= 1
      if @number_of_guesses == 0
        puts ""
        puts "You have no more guesses. You lost!"
        break
      elsif won?
        puts ""
        puts "You won!!"
        break
      end
      guess_analysis
      puts @answer
      puts ""
    end
  end

  def validate_guess
    puts "Enter a number between 1 and 100:"
    loop do
      @guess = gets.chomp.to_i
      break if (1..100).include?(@guess)
      puts "Invalid guess. Enter a number between 1 and 100:"
    end
  end

  def won?
    @guess == @answer          
  end

  def guess_analysis
    if @guess < @answer
      puts "Your guess is too low."
    elsif @guess > @answer
      puts "Your guess is too high."
    end
  end

end

game = GuessingGame.new
game.play