# Mortgage/Car Loan Calculator

require 'yaml'
MESSAGES = YAML.load_file("mortgage_car_loan_calculator_messages.yml")
Kernel.puts(MESSAGES.inspect())

def valid_number?(num)
  num == num.to_f().to_s() || num == num.to_i().to_s()
end

def prompt(message)
  Kernel.puts(">> #{message}")
end

loop do
  prompt(MESSAGES['welcome'])

  prompt(MESSAGES['loan_amount'])

  loan_amount = String.new
  loop do
    loan_amount = Kernel.gets().chomp()
    break if valid_number?(loan_amount)

    prompt(MESSAGES['invalid_number'])
  end

  apr = String.new
  loop do
    prompt(MESSAGES['apr'])
    apr = Kernel.gets().chomp()
    break if valid_number?(apr)

    prompt(MESSAGES['invalid_number'])
  end

  apr = apr.to_f
  mo_interest_rate = (apr / 12) * 0.01
  # mo_interest_rate = mo_interest_rate.to_s.slice!(0..6).to_f

  loan_duration_years = String.new
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration_years = Kernel.gets().chomp()
    break if valid_number?(loan_duration_years)

    prompt(MESSAGES['invalid_number'])
  end

  loan_duration_months = loan_duration_years.to_i * 12

  monthly_payment = loan_amount.to_f * (mo_interest_rate / (1 - (1 + mo_interest_rate)**(-loan_duration_months)))

  # monthly_payment = monthly_payment.to_s.slice!(0..6).to_f

  Kernel.puts("Monthly Interest Rate: #{mo_interest_rate}")
  Kernel.puts("Loan Duration (in Months): #{loan_duration_months}")
  Kernel.puts("Monthly Payment: $#{format('%.2f', monthly_payment)}")

  prompt(MESSAGES['again'])
  response = Kernel.gets().chomp().downcase()
  break unless response == 'y'

end
