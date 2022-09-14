# Rock Paper Scissors Game
# version 1.0.0
# AJ Clarke

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
  else
    prompt("It's a tie!")
  end
end

loop do
  system 'clear'
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      puts ''
      break
    else
      prompt('That is not a valid choice.')
      puts ''
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice} | Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  puts ''
  answer = ''
  play_again = nil
  loop do
    prompt("Do you want to play again? (y for yes: n for no)")
    answer = gets.chomp
    if answer.downcase == 'n' || answer.downcase == 'no'
      play_again = false
      break
    elsif answer.downcase == 'y' || answer.downcase == 'yes'
      play_again = true
      break
    else
      prompt("Invalid response")
      puts ''
    end
  end
  break if play_again == false
end

puts ''
prompt("Thanks for playing!")
puts ''
