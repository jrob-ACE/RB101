VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  case player
  when computer
    prompt("It's a Tie!")
  when 'rock'
    computer == 'paper' ? prompt("Computer Won!") : prompt("Player Won!")
  when 'paper'
    computer == 'rock' ? prompt("Player Won!") : prompt("Computer Won!")
  else #'scissors'
    computer == 'rock' ? prompt("Computer Won!") : prompt("Player Won!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    VALID_CHOICES.include?(choice) ? break : prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose #{choice}; Computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again? (y/n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you for playing.  Good bye!')
