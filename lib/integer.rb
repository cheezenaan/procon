# frozen_string_literal: true

def prime_factorize(num)
  res = 2.upto(Math.sqrt(num)).with_object([]) do |div, arr|
    while num % div == 0
      arr << div
      num /= div
    end
  end

  res << num if num != 1
end

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

# ref. https://atcoder.jp/contests/abc086/submissions/11768628
def sqrt_number?(num)
  Math.sqrt(num).floor == Math.sqrt(num)
end
