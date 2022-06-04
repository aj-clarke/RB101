def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operator)
  case operator
  when '1'
    return "Adding"
  when '2'
    return "Subtracting"
  when '3'
    return "Multiplying"
  when '4'
    return "Dividing"
  end
end
prompt("Welcome to Calculator! Enter your name:")

name = nil
loop do
  name = Kernel.gets().chomp()
  break unless name.empty?()

  prompt("Make sure to use a valid name.")
end

prompt("Hi #{name}!")

loop do # Main Loop
  number1 = nil
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1)

    prompt("Invalid number, please try again.")
  end

  # Kernel.puts(number1.inspect())    => .inspect will allow you to inspect a variable

  number2 = nil
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)

    prompt("Invalid number, please try again.")
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

    prompt("Invalid selection, please choose 1, 2, 3, or 4.")
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
             number1.to_f() / number2.to_f()

           end

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")

end

prompt("Thank you for using the calculator. Goodbye!")
