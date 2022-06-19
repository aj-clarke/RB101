# Calculator with Bonus Features
# version 2

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num == num.to_i().to_s() || num == num.to_f.to_s
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

prompt(messages('welcome'))

name = nil
loop do
  name = Kernel.gets().chomp()
  break unless name.empty?()

  prompt(messages('valid_name'))
end

prompt("Hi #{name}!")

loop do # Main Loop
  number1 = nil
  loop do
    prompt(messages('first_number'))
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1)

    prompt(messages('valid_number'))
  end

  # .inspect method will allow you to inspect a variable
  # Kernel.puts(first_number.inspect())
  
  number2 = nil
  loop do
    prompt(messages('second_number'))
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)

    prompt(messages('valid_number'))
  end

  operator = nil
  operator_prompt = <<~MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  loop do
    operator = Kernel.gets().chomp()
    break if %w(1 2 3 4).include?(operator)

    prompt(messages('valid_operator'))
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_i()
           end

  prompt("The result is #{result}.")
  puts "---------------------------------"
  puts ""

  prompt(messages('another_calculation'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
  puts ""
end

prompt(messages('thanks_end'))
puts ""
