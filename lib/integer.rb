# frozen_string_literal: true

def divisors_of(num)
  sqrt_of_num = Math.sqrt(num)

  1.upto(sqrt_of_num).with_object([]) do |i, arr|
    next unless num % i == 0

    arr << i
    arr << num / i if div = (num / i) != sqrt_of_num
  end
end

# ref. ABC101-B
def digit_sum_of(num)
  sum = 0

  while num > 0
    sum += num % 10
    num /= 10
  end

  sum
end
# cf. also find the sum to cast from Integer to String and then inject
# ex. num = 334; num.to_s.chars.map(&:to_i).inject(:+) => 10
