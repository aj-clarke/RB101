def calc_tip(tip_input, sub_total)
  tip_percent = tip_input * TO_PERCENT
  tip_amount = tip_percent * sub_total
  tip_amount
end

def calc_bill(tip_amount, sub_total)
  tip_amount + sub_total
end

def display_full_bill(tip_amount, bill_total)
  puts "The tip is $#{tip_amount}"
  puts "The total is $#{bill_total}"
end

def valid_number?(num)
  num.to_s.to_f == num
end

TO_PERCENT = 0.01
yes_response = ['y', 'yes']
no_response = ['n', 'no']

system 'clear'

puts "Welcome to the Tips Calculator"

loop do
  sub_total = nil
  loop do
    puts "\nPlease enter the bill amount: "
    sub_total = gets.chomp.to_f
    break if valid_number?(sub_total)
  end

  tip_input = nil
  loop do
    puts "\nPlease enter the tip percentage: "
    tip_input = gets.chomp.to_f
    break if valid_number?(tip_input)
  end

  tip_amount = calc_tip(tip_input, sub_total)
  bill_total = calc_bill(tip_amount, sub_total)
  tip_amount = format("%.2f", tip_amount)
  bill_total = format("%.2f", bill_total)

  display_full_bill(tip_amount, bill_total)

  puts "\nCalculate another tip? (y for yes, n for no)"
  new_calculation = ''
  loop do
    new_calculation = gets.chomp.downcase
    if yes_response.include?(new_calculation)
      new_calculation = true
      break
    elsif no_response.include?(new_calculation)
      new_calculation = false
      break
    else
      puts "Invalid response, please try again"
    end
  end

  break unless new_calculation
end

puts "\nThanks for using the Tip Calculator!"
