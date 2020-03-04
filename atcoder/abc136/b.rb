# frozen_string_literal: true

n = gets.to_i

def count_digits(num)
  num.zero? ? 1 : Math.log10(num.abs).to_i + 1
end

puts 1.upto(n).count { |i| count_digits(i).odd? }
