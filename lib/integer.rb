# frozen_string_literal: true

# Enumerate the primes less than or equal to the given integer,
# using the sieve of Eratosthenes.
#
# @example Enumerate the primes less than or equal to 34
#   puts(primes: eratos(34)) #=> { primes: [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31] }
#
# @param [Integer] num the number
# @return [Array] the array including the primes
def eratos(num)
  arr = Array.new(num + 1, 1)
  arr[0] = arr[1] = 0

  2.upto(Math.sqrt(num)) do |i|
    next if arr[i] == 0
    (i * 2).step(num, i) { |n| arr[n] = 0 }
  end

  arr.each_with_index.with_object([]) do |(a, i), res|
    res << i if a == 1
  end
end

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
