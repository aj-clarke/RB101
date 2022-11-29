def mathmatical_operations(int1, int2, results)
  results['+'] = int1 + int2
  results['-'] = int1 - int2
  results['*'] = int1 * int2
  results['/'] = int1 / int2
  results['%'] = int1 % int2
  results['**'] = int1**int2
end

oper_seq = %w(+ - * / % **)
oper_and_results = { '+' => '', '-' => '', '*' => '', '/' => '', '%' => '',
                     '**' => '' }

puts "=> Enter the first number:"
int1 = gets.chomp.to_i
puts "=> Enter the second number:"
int2 = gets.chomp.to_i

mathmatical_operations(int1, int2, oper_and_results)

counter = 0
max_counter = oper_and_results.size - 1
loop do
  puts "=> #{int1} #{oper_seq[counter]} #{int2} " \
          "= #{oper_and_results[oper_seq[counter]]}"
  break if counter.eql?(max_counter)
  counter += 1
end
