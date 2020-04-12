# frozen_string_literal: true

n, a, b = gets.split.map(&:to_i)
count_a = count_b = 0

gets.chomp.each_char do |c|
  if c == 'a'
    if count_a + count_b < a + b
      count_a += 1
      puts 'Yes'
    else
      puts 'No'
    end
  elsif c == 'b'
    if count_a + count_b < a + b && count_b < b
      count_b += 1
      puts 'Yes'
    else
      puts 'No'
    end
  elsif c == 'c'
    puts 'No'
  end
end
