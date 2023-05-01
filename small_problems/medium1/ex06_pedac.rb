=begin
Question:
Stack Machine Interpretation
A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

A stack-and-register programming language is a language that uses a stack of values. Each operation in the language operates on a register, which can be thought of as the current value. The register is not part of the stack. Operations that require two values pop the topmost item from the stack (that is, the operation removes the most recently pushed value from the stack), perform the operation using the popped value and the register value, and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. It multiplies the stack value with the register value, removes the value from the stack, and then stores the result back in the register. Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack), and a register value of 7, then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), and the result of the multiplication, 28, is left in the register. If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value
All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.

-----------------------
Rules:
  Explicit Requirements
  - When performing an operation, topMost item is popped off of stack (out of array). Operation is completed against the register value, and then stored as the register new value.
  - Input string is a list of commands
  - Register is intialized to 0
  - n: reassign n in the "register". Do not modify the stack.
  - PUSH: Push the register value into array. Leave the value in the register.
  - ADD: Pops a value from the array, add to register value, store result in the register.
  - SUB: Pops a value from the array, subtract from register value, store result in the register.
  - MULT: Pops a value from the array, multiply by register value, store result in the register.
  - DIV: Pops a value from the array, divide into register value, store integer result in the register.
  - MOD: Pops a value from the array, divide into register value, store integer remainder of the division in the register.
  - POP: Remove the topmost item from array, place in register
  - PRINT: Print the register value
  - All operations are integer operations (which is only important with DIV and MOD).

  Implicit Requirements
  - N/A

I: String of commands
O: Result of running commands

-----------------------
Modeling:
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
downcase! the string
register = 0
Create `commands = `split` up input string `str` into array of strings (commands are executed from left to right, so we #shift items out of commands
Create `next_command` set to nil (placeholder)
Create `working_array` array (items are popped off as needed, right to left)

Start a loop

Initialize `next_command` = `commands.shift`

Reassign `register` to `next_command.to_i` - if `next_command` to int back to str equals `next_command`
Else
Initialize `operation` to `next_command`

Build a case statment to handle all operations (case = operation)
case = operation (ie: 'push')
when 'push'
  `working_array` << register # => This will be execuited
when 'add'
  value = `working_array.pop`
  register += value
when 'sub'
value = `working_array.pop`
register -= value
.......continue until all statements are built

Break out of the loop when the string array is empty?

Done.
-----------------------
Data Structure:
I: String (commands)
W: Array of "string" commands
O: Any output per the input commands

Algorithm:
< given a string `str` >

Downcase `str` (destructively)

Initialize `register` to 0
Initialize `commands` to result of splitting `str` into an array of string elements
Initilaize `working_array` array

Start a loop

  Initialize `next_command` equal to the first index position in `commands` (zero index) 
  If an integer if conversion from string to int back to string equals its current value
    `register` equals `next_command` value:
      `next_command.to_i` - if `next_command` to int back to str equals `next_command`
    Else
    Initialize `operation` to `next_command`
  
  If operation exists (not nil)
  Initialize `case` equal to `operation`
    Define case statment for each `operation` type:
      PUSH, ADD, SUB, MULT, DIV, MOD, POP, PRINT

-----------------------
Code:
=end

def minilang(str)
  str.downcase!
  register = 0
  commands = str.split
  working_array = []

  loop do
    next_command = commands.shift
    if next_command.to_i.to_s.eql?(next_command)
      register = next_command.to_i
    else
      operation = next_command
    end

    if operation
      case operation
      when 'push'
        working_array << register
      when 'add'
        from_working_array = working_array.pop
        register += from_working_array
      when 'sub'
        from_working_array = working_array.pop
        register -= from_working_array
      when 'mult'
        from_working_array = working_array.pop
        register *= from_working_array
      when 'div'
        from_working_array = working_array.pop
        register /= from_working_array
      when 'mod'
        from_working_array = working_array.pop
        register %= from_working_array
      when 'pop'
        register = working_array.pop
      when 'print'
        puts register
      end
    end
    break if commands.empty?
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)