# Rock Paper Scissors Game
# version 1.0.0
# AJ Clarke
VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'r' && (second == 'sc' || second == 'l')) ||
    (first == 'p' && (second == 'r' || second == 'sp')) ||
    (first == 'sc' && (second == 'p' || second == 'l')) ||
    (first == 'l' && (second == 'p' || second == 'sp')) ||
    (first == 'sp' && (second == 'r' || second == 'sc'))
end

def count_wins(arr, winner)
  if winner.include?('player')
    arr << 0
  elsif winner.include?('computer')
    arr << 1
  end
end

def display_results(player, computer, array)
  if win?(player, computer)
    count_wins(array, "player")
    prompt("You won!")
  elsif win?(computer, player)
    count_wins(array, "computer")
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  system 'clear'
  choice = ''
  total_wins = [0, 0]
  current_win = []
  winning_number = 3
  loop do
    loop do
      prompt("Welcom to rock, paper, scissors, lizard, spock!")
      puts ''
      prompt("Choose one: 'r' for rock, 'p' for paper, 'sc' for scissors,
               'l' for lizard, 'sp' for spock")

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
    puts '--------------------'
    display_results(choice, computer_choice, current_win)

    if current_win == [0]
      total_wins[0] += 1
      puts '--------------------'
      prompt("Your wins: #{total_wins[0]}")
      prompt("Computer wins: #{total_wins[1]}")
    elsif current_win == [1]
      total_wins[1] += 1
      puts '--------------------'
      prompt("Your wins: #{total_wins[0]}")
      prompt("Computer wins: #{total_wins[1]}")
    end

    puts '--------------------'
    puts ''

    if total_wins[0] >= winning_number
      puts "Player is the GRAND CHAMPION"
      break
    elsif total_wins[1] >= winning_number
      puts "Computer is the GRAND CHAMPION"
      break
    end

    current_win = []
  end
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
