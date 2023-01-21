def fizzbuzz(start_int, end_int)
  start_int.upto(end_int) do |int|
    if (int % 3).zero? && (int % 5).zero?
      puts 'FizzBuzz'
    elsif (int % 3).zero?
      puts 'Fizz'
    elsif (int % 5).zero?
      puts 'Buzz'
    else
      puts int
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
