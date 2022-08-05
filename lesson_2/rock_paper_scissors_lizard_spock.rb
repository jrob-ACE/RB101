require 'pry'

# Number of VALID_CHOICES must be odd and entries must be all lowercase:
VALID_CHOICES = %w(rock paper scissors spock lizard)

number_choices = (VALID_CHOICES.length - 1) / 2
choice_array = VALID_CHOICES + VALID_CHOICES

player_win = {} # Will contain keys for player choice and values for what makes the player win or tie.
VALID_CHOICES.each_index do |ind|
  i = number_choices - 1
  win_choices = [choice_array[ind + 2]]
  while i > 0
    win_choices << choice_array[ind + 2 + 2 * i]
    i -= 1
  end

  player_win[VALID_CHOICES[ind]] = win_choices
end

PLAYER_WIN = player_win

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  if player == computer
    prompt("It's a Tie!")
  elsif PLAYER_WIN[player].any?(computer)
    prompt("Player Won!")
  else
    prompt("Computer Won!")
  end
end

def update_score(score, player, computer)
  if player == computer
  elsif PLAYER_WIN[player].any?(computer)
    score[0] += 1
  else
    score[1] += 1
  end
  nil
end

def valid_input?(choice)
  answer = false
  VALID_CHOICES.each do |option|
    # This code was chosen in case spock or scissors were chosen by using just 's'
    if option.start_with?(choice) && choice != ''
      answer = !answer
    end
  end

  answer
end

def update_choice!(input)
  # Mutates the value of choice to include the rest of the option.
  # E.g. if 'sc' is stored in choice, this method will mutate choice to be 'scissors'.
  full_choice = VALID_CHOICES.select { |option| option.start_with?(input) }
  input.gsub!(input, full_choice[0])
end

prompt("---Welcome to #{VALID_CHOICES.join('-')}!---")

loop do
  score = [0, 0] # [player, computer]
  prompt('Starting a new match...')
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp().downcase()
      valid_input?(choice) ? break : prompt("That's not a valid choice.")
    end

    # Call a method to change user input 'choice' to full word of choice.
    update_choice!(choice)

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{choice}; Computer chose #{computer_choice}")

    display_result(choice, computer_choice)
    update_score(score, choice, computer_choice)
    prompt("Player: #{score[0]}   Computer: #{score[1]}")
    if score[0] > 2
      prompt('Congratulations! You are the Grand Winner!')
      break
    elsif score[1] > 2
      prompt('Computer is the Grand Winner! Better luck next time!')
      break
    end
  end

  prompt("Do you want to play again? (y/n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you for playing.  Good bye!')
