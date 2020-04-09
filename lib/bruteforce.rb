# frozen_string_literal: true

def bit_bruteforce(n)
  (1 << n).times do |bit|
    s = n.times.reject do |i|
      (bit & (1 << i)) == 0
    end

    puts "#{bit}: {#{s.join(' ')}}"
  end
end

# ex. partial_sum_of(3, [4, 2, 9]) # => [0, 4, 2, 6, 9, 13, 11, 15]
# ref. https://atcoder.jp/contests/apg4b/tasks/APG4b_ac
def partial_sum_of(n, nums)
  (1 << n).times.with_object([]) do |bit, arr|
    arr << n.times.inject(0) do |r, i|
      r + ((bit & (1 << i)) != 0 ? nums[i] : 0)
    end
  end
end
