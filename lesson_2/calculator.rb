# Calculator with Bonus Features
# version 3

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts("=> #{message}")
end

def get_name
  name = gets.chomp
  if name.empty? == false
    name
  else
    prompt(messages('valid_name'))
  end
end

def get_number
  num = gets.chomp
  if valid_number?(num)
    num
  else
    prompt(messages('invalid_number'))
    puts ''
  end
end

def valid_number?(num)
  num == num.to_i.to_s || num == num.to_f.to_s
end

def get_operator
  operator = gets.chomp
  if %w(1 2 3 4).include?(operator)
    operator
  else
    puts ''
    prompt(messages('invalid_operator'))
  end
end

def operation_to_message(operator)
  case operator
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

def another_calculation
  loop do
    prompt(messages('another_calculation'))
    response = gets.chomp.downcase
    if response == 'y' || response == 'n'
      return response
    else
      prompt(messages('invalid_new_calc_response'))
      puts ''
    end
  end
end

system 'clear'
prompt(messages('welcome'))

name = nil
loop do
  name = get_name
  break if name
end

puts ''
prompt("Hi #{name}!")

loop do # Main Loop
  number1 = nil
  loop do
    prompt(messages('first_number'))
    number1 = get_number
    break if number1
  end

  puts ''
  number2 = nil
  loop do
    prompt(messages('second_number'))
    number2 = get_number
    break if number2
  end

  puts ''
  operator = nil
  operator_prompt = <<~MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    -----------
  MSG

  prompt(operator_prompt)

  loop do
    operator = get_operator
    break if operator
  end

  puts ''
  puts '---------------------------------'
  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")
  puts '---------------------------------'
  puts ''

  new_calculation = another_calculation
  break if new_calculation == 'n'
  system 'clear'
end

puts ''
prompt(messages('thanks_end'))
puts ''
