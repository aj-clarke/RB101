HEXADECIMALS = ('0'..'9').to_a + ('a'..'f').to_a

def create_uuid
  section1 = ''
  section2 = ''
  section3 = ''
  section4 = ''
  section5 = ''
  8.times { |_| section1 << HEXADECIMALS.sample }
  4.times { |_| section2 << HEXADECIMALS.sample }
  4.times { |_| section3 << HEXADECIMALS.sample }
  4.times { |_| section4 << HEXADECIMALS.sample }
  12.times { |_| section5 << HEXADECIMALS.sample }
  puts "#{section1}-#{section2}-#{section3}-#{section4}-#{section5}"
end

create_uuid