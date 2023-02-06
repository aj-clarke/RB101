require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('twenty_one_messages.yml')

D_STAY = 17 # Update BASICRULES and YAML messages as needed
MAX_HAND = 21 # Update BASICRULES and YAML messages as needed

GAME_ROUNDS = 2

def prompt(msg)
  puts "=> #{msg}"
end

def basic_rules
  system 'clear'
  puts format("%45s", 'BASIC RULES')
  <<-BASICRULES
 ------------------------------------------------------------------------------
| - The goal of 21 is to get as close to 21, or getting 21 without going over. |
| - If player or dealer is initially dealt 21, they instantly win the round.   |
| - If you or the dealer goes over 21, that is a 'bust', and results in a loss |
|   of the round.                                                              |
| - The dealers second card will be shown after the players turn is over, or   |
|   if a win/loss condition occurs before the dealers turn has started.        |
| - The Dealer will always 'hit' until the hand total is at least 17. After 17 |
|   or higher is reached, the dealers turn is over, and hand totals determine  |
|   a win or a tie.                                                            |
| - The first to win 5 games total is the CHAMPION. Good Luck!!                |
 ------------------------------------------------------------------------------
  BASICRULES
end

def full_deck
  {
    'H' => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
             '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
             'A' => 11 },
    'D' => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
             '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
             'A' => 11 },
    'C' => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
             '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
             'A' => 11 },
    'S' => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
             '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
             'A' => 11 }
  }
end

=begin
Deals specified num of cards to player or dealer hand that is passed into method
Pushes card into passed in `hand_arr` array, pushes each cards value into the
respective hands value array, then deletes that card from the games nested
`deck` hash
=end
def deal_cards(deck, num_to_deal, cards_and_values, to_who = 'player')
  deal_to = ['player_cards', 'player_card_values'] if to_who.eql?('player')
  deal_to = ['dealer_cards', 'dealer_card_values'] if to_who.eql?('dealer')

  num_to_deal.times do |_|
    deal_cards_logic(deck, cards_and_values, deal_to)
  end
end

def deal_cards_logic(deck, cards_and_values, deal_to)
  suit = deck.keys.sample
  card = deck[suit].keys.sample
  cards_and_values[deal_to[0].to_sym] << [suit, card]
  cards_and_values[deal_to[1].to_sym] << deck[suit][card]
  deck[suit].delete(card)
end

def full_board_display(cards_and_values, show_dealer, score)
  puts basic_rules
  board_display(cards_and_values, show_dealer, score)
end

def board_display(cards_and_values, show_dealer, score)
  puts hand_display_separator(cards_and_values[:player_cards],
                              cards_and_values[:dealer_cards])
  hand_display(cards_and_values, show_dealer)
  puts hand_display_separator(cards_and_values[:player_cards],
                              cards_and_values[:dealer_cards])
  score_display(score)
end

def score_display(score)
  puts
  puts "Wins: Player - #{score[:player]} | Dealer - #{score[:dealer]}"
  puts
end

def hand_display_separator(player_cards, dealer_cards)
  separator = if player_cards.size > dealer_cards.size
                '--------' * player_cards.size
              else
                '--------' * dealer_cards.size
              end
  separator
end

def hand_display(cards_and_values, show_dealer)
  puts
  puts "Dealer Hand Total: " \
       "#{dealer_hand_total(cards_and_values[:dealer_card_values],
                            show_dealer)}"
  puts hand_display_cards_and_separator(cards_and_values, show_dealer)
  puts "Player Hand Total: " \
       "#{calculate_hand_total(cards_and_values[:player_card_values])}"
  puts
end

def hand_display_cards_and_separator(cards_and_values, show_dealer)
  dealer_hand_display(cards_and_values[:dealer_cards], show_dealer)
  puts hand_display_separator(cards_and_values[:player_cards],
                              cards_and_values[:dealer_cards])
  player_hand_display(cards_and_values[:player_cards])
end

def dealer_hand_display(dealer_cards, show_dealer)
  dealer_top_bottom = ' -----  ' * dealer_cards.size
  puts dealer_top_bottom
  if show_dealer.eql?('yes')
    puts display_card_top_bottom(dealer_cards, 'top')
    puts display_card_middle(dealer_cards)
    puts display_card_top_bottom(dealer_cards, 'bottom')
  else
    dealer_single_card(dealer_cards)
  end
  puts dealer_top_bottom
end

def player_hand_display(player_cards)
  player_top_bottom = ' -----  ' * player_cards.size
  puts player_top_bottom
  puts display_card_top_bottom(player_cards, 'top')
  puts display_card_middle(player_cards)
  puts display_card_top_bottom(player_cards, 'bottom')
  puts player_top_bottom
end

def dealer_single_card(dealer_cards)
  puts "|#{dealer_cards[0][0]}    | |     | "
  if dealer_cards[0][1].eql?('10')
    puts "| 1 0 | |     | "
  else
    puts "|  #{dealer_cards[0][1]}  | |     | "
  end
  puts "|    #{dealer_cards[0][0]}| |     | "
end

def display_card_top_bottom(cards_arr, top_bottom)
  line = ''
  cards_arr.each do |card|
    line << if top_bottom.eql?('top')
              "|#{card[0]}    | "
            else
              "|    #{card[0]}| "
            end
  end
  line
end

def display_card_middle(cards_arr)
  line = ''
  cards_arr.each do |card|
    line << if card[1].eql?('10')
              "| 1 0 | "
            else
              "|  #{card[1]}  | "
            end
  end
  line
end

def dealer_hand_total(dealer_cards_value, show_dealer)
  if show_dealer.eql?('yes')
    calculate_hand_total(dealer_cards_value)
  else
    dealer_cards_value[0]
  end
end

def calculate_hand_total(hand_val_arr)
  loop do
    break if hand_val_arr.index(11).nil?
    if hand_val_arr.sum > MAX_HAND
      change_idx = hand_val_arr.index(11)
      hand_val_arr[change_idx] = 1
    end
    break if hand_val_arr.sum <= MAX_HAND
  end
  hand_val_arr.sum
end

def check_for_max_hand(cards_and_values, show_dealer, max_hand_win)
  player_total = calculate_hand_total(cards_and_values[:player_card_values])
  dealer_total = calculate_hand_total(cards_and_values[:dealer_card_values])
  result = possible_max_hand_results(player_total, dealer_total)
  show_dealer.gsub!('no', 'yes') if !result.nil?
  max_hand_win << 'true' if !result.nil?
  result
end

def possible_max_hand_results(player_total, dealer_total)
  if player_total.eql?(MAX_HAND) && dealer_total.eql?(MAX_HAND)
    'tie'
  elsif player_total.eql?(MAX_HAND)
    'player'
  elsif dealer_total.eql?(MAX_HAND)
    'dealer'
  end
end

def player_hand_status(response, cards_and_values, break_out)
  if response.eql?('stay')
    prompt(MESSAGES['player_chose_stay'])
    gets.chomp
    break_out << 'true'
  end

  if calculate_hand_total(cards_and_values[:player_card_values]).eql?(MAX_HAND)
    prompt(MESSAGES['player_has_max_stay'])
    gets.chomp
    break_out << 'true'
  end
end

def player_hand_check(response, cards_and_values, show_dealer, break_out)
  if response.eql?('stay')
    player_hand_status(response, cards_and_values, break_out)
    return 'stay'
  end

  if bust?(calculate_hand_total(cards_and_values[:player_card_values]))
    show_dealer.gsub!('no', 'yes')
    return 'bust'
  end

  if calculate_hand_total(cards_and_values[:player_card_values]).eql?(MAX_HAND)
    show_dealer.gsub!('no', 'yes')
    player_hand_status(response, cards_and_values, break_out)
    'max_hand'
  end
end

def bust?(hand_total)
  hand_total > MAX_HAND
end

def computer_hand_start(show_dealer, cards_and_values, score)
  show_dealer.gsub!('no', 'yes')
  full_board_display(cards_and_values, show_dealer, score)
  prompt(MESSAGES['dealer_second_card_reveal'])
  gets.chomp
end

def computer_hit_process(deck, cards_and_values, show_dealer, score)
  prompt(MESSAGES['dealer_below_stay'])
  gets.chomp
  deal_cards(deck, 1, cards_and_values, 'dealer')
  full_board_display(cards_and_values, show_dealer, score)
end

def computer_under_stay?(dealer_cards_value)
  dealer_cards_value.sum < D_STAY
end

def computer_hit_check(cards_and_values)
  puts "=> Dealer has #{cards_and_values[:dealer_card_values].sum} " \
       "and must stay. Dealers turn is over. Press enter to continue..."
  gets.chomp
end

def computer_max_hand_check(cards_and_values, show_dealer, max_hand_win)
  puts "Dealer stays with the best hand possible! Press enter to continue..."
  check_for_max_hand(cards_and_values, show_dealer, max_hand_win)
end

def winner_by_max_hand(check_max_hand_win, winner, msg)
  if check_max_hand_win.eql?('tie')
    msg << 'You and the dealer both have the best hands possible!'
  elsif check_max_hand_win.eql?('player')
    winner << 'player'
    msg << 'You got the best hand possible and are the winner!'
  else
    winner << 'dealer'
    msg << 'The dealer has the best hand possible, you lose this round.'
  end
end

def winner_by_bust(winner, msg, p_status, d_bust)
  if p_status.eql?('bust')
    winner << 'dealer'
    msg << 'One hit too many, you went over the max hand limit and busted!'
  elsif d_bust.eql?(true)
    winner << 'player'
    msg << 'The dealer got greedy and busted!'
  end
end

def winner_by_card_total(p_sum, d_sum, winner, msg)
  if p_sum > d_sum
    winner << 'player'
    msg << 'You have a higher card total!'
  elsif d_sum > p_sum
    winner << 'dealer'
    msg << 'The dealer has a higher card total!'
  elsif d_sum.eql?(p_sum)
    winner << 'tie'
    msg << 'You and the dealer have the same card total!'
  end
end

def champion(score, winner)
  winner << 'p_wins' if score[:player].eql?(GAME_ROUNDS)
  winner << 'd_wins' if score[:dealer].eql?(GAME_ROUNDS)
end

# rubocop: disable Metrics/MethodLength
def winner_message(winner)
  case winner
  when 'tie'
    <<-TIEMSG
=========================================
   Well..You didn't lose! It is a TIE!
=========================================
      TIEMSG
  when 'player'
    <<-WINMSG
=========================================
      Nice Work! You win the round!
=========================================
    WINMSG
  when 'dealer'
    <<-LOSSMSG
=========================================
The dealer wins, better luck next round!!
=========================================
    LOSSMSG
  when 'p_wins'
    <<-PWINSMSG
=========================================
    $$$$ CONGRATULATIONS YOU WON $$$$
=========================================
    PWINSMSG
  when 'd_wins'
    <<-DWINSMSG
=========================================
  EVERYONE KNOWS THE HOUSE ALWAYS WINS!
=========================================
    DWINSMSG
  end
end
# rubocop: enable Metrics/MethodLength

def display_winner(msg, win_msg)
  puts msg
  puts
  puts win_msg
  puts
end

def play_again_full_logic
  response = nil
  loop do
    response = play_again
    break if response.eql?('no')
    play_again_yes
    break
  end
  response
end

def play_again
  prompt(MESSAGES['play_another_game'])
  response = gets.chomp.downcase
  if response.eql?('n') || response.eql?('no')
    return 'no'
  elsif response.eql?('y') || response.eql?('yes')
    return 'yes'
  end
  prompt(MESSAGES['invalid_input'])
end

def play_again_yes
  prompt(MESSAGES['next_game_starting'])
  gets.chomp
end

def reset_score(score)
  score[:player] = 0
  score[:dealer] = 0
end

# Begin Game
score = { player: 0, dealer: 0 }
puts basic_rules
prompt(MESSAGES['basic_rules'])
gets.chomp

loop do
  deck = full_deck
  show_dealer = 'no'
  cards_and_values = { player_cards: [], dealer_cards: [],
                       player_card_values: [], dealer_card_values: [] }
  deal_cards(deck, 2, cards_and_values, 'player')
  deal_cards(deck, 2, cards_and_values, 'dealer')
  full_board_display(cards_and_values, show_dealer, score)

  max_hand_win = String.new
  check_max_hand_win = check_for_max_hand(cards_and_values, show_dealer,
                                          max_hand_win)
  if !check_max_hand_win.nil?
    show_dealer.gsub!('no', 'yes')
    full_board_display(cards_and_values, show_dealer, score)
  else
    player_status = ''
    break_out = ''

    loop do
      prompt(MESSAGES['player_hit_or_stay'])
      response = gets.chomp
      if response.eql?('hit')
        deal_cards(deck, 1, cards_and_values, 'player')
        full_board_display(cards_and_values, show_dealer, score)
      end

      player_status = player_hand_check(response, cards_and_values,
                                        show_dealer, break_out)
      break if player_status.eql?('bust') || break_out.eql?('true')

      prompt(MESSAGES['invalid_input']) if response != 'hit'
    end

    if player_status.eql?('bust')
      full_board_display(cards_and_values, show_dealer, score)
    else
      dealer_bust = ''
      computer_hand_start(show_dealer, cards_and_values, score)

      loop do
        full_board_display(cards_and_values, show_dealer, score)
        if computer_under_stay?(cards_and_values[:dealer_card_values])
          computer_hit_process(deck, cards_and_values, show_dealer, score)
        end

        dealer_total = cards_and_values[:dealer_card_values].sum
        if dealer_total >= D_STAY && dealer_total < MAX_HAND
          computer_hit_check(cards_and_values)
          break
        elsif dealer_total.eql?(MAX_HAND)
          check_max_hand_win = computer_max_hand_check(cards_and_values,
                                                       show_dealer)
          break
        elsif bust?(cards_and_values[:dealer_card_values].sum)
          dealer_bust = true
          break
        end
      end
    end
  end

  player_sum = cards_and_values[:player_card_values].sum
  dealer_sum = cards_and_values[:dealer_card_values].sum
  msg = String.new
  win_msg = nil
  winner = String.new

  puts
  if max_hand_win.eql?('true')
    winner_by_max_hand(check_max_hand_win, winner, msg)
    win_msg = winner_message(check_max_hand_win)
  elsif player_status.eql?('bust') || dealer_bust.eql?(true)
    winner_by_bust(winner, msg, player_status, dealer_bust)
    win_msg = winner_message(winner)
  else
    winner_by_card_total(player_sum, dealer_sum, winner, msg)
    win_msg = winner_message(winner)
  end

  score[:player] += 1 if winner.eql?('player')
  score[:dealer] += 1 if winner.eql?('dealer')

  puts
  full_board_display(cards_and_values, show_dealer, score)
  if score[:player] < GAME_ROUNDS && score[:dealer] < GAME_ROUNDS
    display_winner(msg, win_msg)
    prompt(MESSAGES['round_over'])
  else
    winner.gsub!(/[a-z]/i, '')
    champion(score, winner)
    win_msg = winner_message(winner)
    display_winner(msg, win_msg)
    prompt(MESSAGES['game_over'])
  end
  gets.chomp

  if score[:player].eql?(GAME_ROUNDS) || score[:dealer].eql?(GAME_ROUNDS)
    response = play_again_full_logic
    break if response.eql?('no')
    reset_score(score)
  end
end

system 'clear'
puts
prompt(MESSAGES['thanks_end'])
