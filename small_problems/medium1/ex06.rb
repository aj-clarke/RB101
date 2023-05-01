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
