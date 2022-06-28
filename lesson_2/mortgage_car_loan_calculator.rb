# Mortgage/Car Loan Calculator
# version 3

require 'yaml'
MESSAGES = YAML.load_file('mortgage_car_loan_calculator_messages.yml')

MONTHS_PER_YEAR = 12

def valid_number?(num)
  num == num.to_f.to_s || num == num.to_i.to_s
end

def prompt(message)
  puts ">> #{message}"
end

def get_loan_amount
  loan_amount = String.new
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp
    strip_commas(loan_amount)
    if valid_number?(loan_amount) && loan_amount.to_i > 0
      return loan_amount
    else
      prompt(MESSAGES['invalid_number'])
      puts ''
    end
  end
end

def strip_commas(input_to_strip)
  if /,/.match(input_to_strip)
    input_to_strip.tr!(',', '')
  end
end

def get_apr
  apr = String.new
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    if valid_number?(apr)
      return apr
    else
      prompt(MESSAGES['invalid_number'])
      puts ''
    end
  end
end

def get_loan_duration_years
  years = String.new
  loop do
    prompt(MESSAGES['loan_duration_years'])
    years = gets.chomp
    if valid_number?(years) && years.to_i > 0 && years['.'].nil? == true
      return years
    else
      prompt(MESSAGES['invalid_number'])
      puts ''
    end
  end
end

def get_loan_duration_months(loan_years)
  months = String.new
  loop do
    prompt(MESSAGES['loan_duration_additional_months'])
    months = gets.chomp
    if valid_number?(months) && months.to_i >= 0 && months.to_i < 12 &&
       months['.'].nil? == true
      return loan_years * MONTHS_PER_YEAR + months.to_i
    else
      prompt(MESSAGES['invalid_number'])
      puts ''
    end
  end
end

def calculate_mo_payment(loan_amount, mo_interest_rate, loan_duration_months)
  if mo_interest_rate == 0.0
    puts 'chose 0.0'
    loan_amount.to_f / loan_duration_months
  else
    puts 'chose not 0.0'
    loan_amount.to_f * (mo_interest_rate / (1 -
    (1 + mo_interest_rate)**(-loan_duration_months)))
  end
end

def another_calculation
  loop do
    prompt(MESSAGES['another_calculation'])
    response = gets.chomp.downcase
    if response == 'y' || response == 'n'
      return response
    else
      prompt(MESSAGES['invalid_new_calc_response'])
      puts ''
    end
  end
end

system 'clear'

prompt(MESSAGES['welcome'])
puts ''

loop do # main loop
  loan_amount = get_loan_amount
  apr = get_apr.to_f
  mo_interest_rate = (apr / MONTHS_PER_YEAR) * 0.01
  loan_duration_years = get_loan_duration_years.to_i
  loan_duration_months = get_loan_duration_months(loan_duration_years)
  monthly_payment = calculate_mo_payment(loan_amount, mo_interest_rate,
                                         loan_duration_months)

  puts "Monthly Interest Rate: #{format('%.5f', mo_interest_rate)}"
  puts "Loan Duration (in Months): #{loan_duration_months}"
  puts "Monthly Payment: $#{format('%.2f', monthly_payment)}"
  puts "------------------------------"
  puts ""

  new_calculation = another_calculation
  break if new_calculation == 'n'
  system 'clear'
end
puts ''
prompt(MESSAGES['thanks_end'])
puts ''
