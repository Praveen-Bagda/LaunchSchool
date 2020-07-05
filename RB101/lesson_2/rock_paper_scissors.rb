VALID_CHOICES = %w(scissors paper rock lizard spock)

short_form_array = []
VALID_CHOICES.each do |str|
  length = 1
  loop do
    if short_form_array.include?(str[0, length])
      length += 1
    else
      break
    end
  end
  short_form_array.push(str[0, length])
end

short_form_for_full_form_array = []
iterator = 0
while VALID_CHOICES[iterator]
  short_form_for_full_form_array.push(
    "'#{short_form_array[iterator]}'for #{VALID_CHOICES[iterator]}"
  )
  iterator += 1
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def win?(first, second)
#   (first == 'scissors' && second == 'paper') ||
#     (first == 'paper' && second == 'rock') ||
#     (first == 'rock' && second == 'lizard') ||
#     (first == 'lizard' && second == 'spock') ||
#     (first == 'spock' && second == 'scissors') ||
#     (first == 'scissors' && second == 'lizard') ||
#     (first == 'lizard' && second == 'paper') ||
#     (first == 'paper' && second == 'spock') ||
#     (first == 'spock' && second == 'rock') ||
#     (first == 'rock' && second == 'scissors')
# end

# def individual_game_result(player, computer)
#   if win?(player, computer)
#     'You won!'
#   elsif win?(computer, player)
#     'Computer won!'
#   else
#     'Its a tie!'
#   end
# end

def individual_game_result(player, computer)
  winning_combination_hash = {
    "scissors" => ['paper', 'lizard'],
    "paper" => ['rock', 'spock'],
    "rock" => ['lizard', 'scissors'],
    "lizard" => ['spock', 'paper'],
    "spock" => ['scissors', 'rock']
  }

  if    winning_combination_hash[player].include?(computer)
    'You won!'
  elsif winning_combination_hash[computer].include?(player)
    'Computer won!'
  else
    'Its a tie!'
  end
end

def display_grand_result(player_score, computer_score)
  if player_score == 5
    prompt('Match is over. You won!')
  elsif computer_score == 5
    prompt('Match is over. Computer won!')
  end
end

loop do
  player_score = 0
  computer_score = 0
  loop do
    short_form_choice = ''
    loop do
      prompt("Choose one: #{short_form_for_full_form_array.join(', ')}.")
      short_form_choice = Kernel.gets().chomp()

      if short_form_array.include?(short_form_choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    index = short_form_array.find_index(short_form_choice)
    choice = VALID_CHOICES[index]

    computer_choice = VALID_CHOICES.sample

    Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

    prompt(individual_game_result(choice, computer_choice))

    if individual_game_result(choice, computer_choice) == 'You won!'
      player_score += 1
    elsif individual_game_result(choice, computer_choice) == 'Computer won!'
      computer_score += 1
    end

    prompt("Your score: #{player_score}, Computer Score: #{computer_score}")
    display_grand_result(player_score, computer_score)
    break if player_score == 5 || computer_score == 5
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
