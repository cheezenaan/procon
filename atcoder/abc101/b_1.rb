# frozen_string_literal: true

def digit_sum_of(num)
  sum = 0
  while num > 0
    sum += num % 10
    num /= 10
  end

  sum
end

n = gets.to_i
sn = digit_sum_of(n)

puts n % sn == 0 ? 'Yes' : 'No'
