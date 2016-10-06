#not complete


VALID_CHOICES = %w(rock paper scissors spock lizard)

player_win_count = 0
computer_win_count = 0

def prompt(message)
  puts("=>#{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || 'lizard')) ||
      (first == 'paper' && (second == 'rock' || 'spock')) ||
        (first == 'scissors' && (second == 'paper' || 'lizard'))||
        (first == 'spock' && (second == 'rock' || 'scissors')) ||
        (first == 'lizard' && (soconde == 'paper' || 'spock'))
end

def display_results(player, computer)
  if win?(player, computer)
    player_win_count += 1
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# def display_win_times(player, computer)
#    if win?(player, computer)
#     player_win_count += 1
#     prompt("The times that you won is #{player_win_count}!")
#   else
#     computer_win_count += 1  
#     prompt("The times that computer won is #{computer_win_count}!")
#   end
# end


loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}")
    choice = gets.chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("Your chose #{choice}; Computer chose: #{computer_choice}") 

  display_results(choice, computer_choice)

  # display_win_times(choice, computer_choice)

  break unless (player_win_count || computer_win_count) != 5

  prompt("Do you want to play again?")
  answer = gets.chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for play the game!")
