# frozen_string_literal: true

a, b, k = gets.split.map(&:to_i)

a_remain, k_remain = a >= k ?  [a - k, 0] : [0, k - a]
b_remain = b >= k_remain ? b - k_remain : 0

puts "#{a_remain} #{b_remain}"
