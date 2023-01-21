require 'yaml'
MESSAGES = YAML.load_file('tic_tac_toe_messages.yml')

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, score)
  system 'clear'
  spaces = ' ' * 12
  puts " ----------------------------------------"
  puts "|Current score: Player - #{score[:player]} : " \
       "Computer - #{score[:computer]}|"
  puts "|First to win 2 rounds is the Winner!    |"
  puts "|Player is '#{PLAYER_MARKER}' : Computer is '#{COMPUTER_MARKER}'" \
       "         |"
  puts ' ----------------------------------------'
  puts "#{spaces}     |     |"
  puts "#{spaces}  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts display_board_filler
  puts "#{spaces}  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts display_board_filler
  puts "#{spaces}  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "#{spaces}     |     |"
  puts ''
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def display_board_filler
  <<-FILLER
                 |     |
            -----+-----+-----
                 |     |
  FILLER
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(brd, sep_char = ', ', add_or = 'or')
  brd_str = empty_squares(brd).map(&:to_s)
  int = brd_str.pop
  brd_str << "#{add_or} #{int}"
  brd_str.join(sep_char)
end

def who_goes_first
  prompt(MESSAGES['who_goes_first_intro'])

  result = nil
  loop do
    result = gets.chomp.downcase
    return result if result == 'player' || result == 'computer'
    return ['player', 'computer'].sample if result.eql?('random')
    prompt(MESSAGES['who_goes_first_invalid'])
  end
end

def alternate_player(current_player)
  current_player.eql?('player') ? 'computer' : 'player'
end

def place_piece!(brd, score, current_player)
  player_places_piece!(brd) if current_player.eql?('player')
  computer_places_piece!(brd, score) if current_player.eql?('computer')
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(brd, ', ', 'or')}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt(MESSAGES['invalid_response'])
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd, score)
  display_board(brd, score)
  square = computer_off_or_def(brd)
  if brd[5].eql?(INITIAL_MARKER) && square.eql?(nil)
    square = 5
  elsif square.nil?
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

# rubocop:disable Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
def computer_off_or_def(brd)
  option = { offense: nil, defense: nil }
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       line.any? { |num| brd[num].include?(INITIAL_MARKER) == true }
      option[:offense] = line.select { |box| brd[box].eql?(INITIAL_MARKER) }.pop
    elsif brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
          line.any? { |num| brd[num].include?(INITIAL_MARKER) == true }
      option[:defense] = line.select { |box| brd[box].eql?(INITIAL_MARKER) }.pop
    end
  end
  return option[:offense] unless option[:offense].eql?(nil)
  return option[:defense] unless option[:defense].eql?(nil)
  nil
end
# rubocop:enable Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if line.all? { |num| brd[num].eql?(PLAYER_MARKER) }
    return 'Computer' if line.all? { |num| brd[num].eql?(COMPUTER_MARKER) }
  end
  nil
end

def display_results(brd, score)
  detect_winner(brd) == 'Player' ? score[:player] += 1 : score[:computer] += 1
  display_board(brd, score)

  if score[:player].eql?(2) || score[:computer].eql?(2)
    prompt("#{detect_winner(brd)} won the game!")
    prompt(MESSAGES['press_enter_game_end'])
  else
    prompt("#{detect_winner(brd)} won the round!")
    prompt(MESSAGES['press_enter_nxt_round'])
  end
end

def run_it_back?
  another_game = ''
  loop do
    prompt(MESSAGES['run_it_back_play_again'])
    response = gets.chomp.downcase
    another_game = false if response.eql?('n') || response.eql?('no')
    another_game = true if response.eql?('y') || response.eql?('yes')
    break unless another_game.eql?('')

    prompt(MESSAGES['invalid_response'])
  end

  system 'clear'
  another_game
end

system 'clear'
prompt(MESSAGES['welcome'])
loop do
  score = { player: 0, computer: 0 }
  loop do
    loop do
      board = initialize_board
      current_player = who_goes_first

      loop do
        display_board(board, score)
        place_piece!(board, score, current_player)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      end

      if someone_won?(board)
        display_results(board, score)
      else
        display_board(board, score)
        prompt(MESSAGES['press_enter_tie'])
      end
      gets.chomp

      break if someone_won?(board)
    end

    break if score[:player].eql?(2) || score[:computer].eql?(2)
  end

  break unless run_it_back?
end

prompt(MESSAGES['thanks'])
