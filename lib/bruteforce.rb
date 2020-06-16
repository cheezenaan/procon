# frozen_string_literal: true

def bit_bruteforce(n)
  (1 << n).times do |bit|
    s = n.times.reject do |i|
      (bit & (1 << i)) == 0
    end

    puts "#{bit}: {#{s.join(" ")}}"
  end
end

# @example
#   partial_sum_of(3, [4, 2, 9]) # => [0, 4, 2, 6, 9, 13, 11, 15]
# @see https://atcoder.jp/contests/apg4b/tasks/APG4b_ac
def partial_sum_of(n, nums)
  (1 << n).times.with_object([]) do |bit, arr|
    arr << n.times.inject(0) do |r, i|
      r + ((bit & (1 << i)) != 0 ? nums[i] : 0)
    end
  end
end

# @see https://atcoder.jp/contests/abc146/submissions/11756004
def bsearch(arr_or_range, &block)
  ng = 0
  ok = arr_or_range.size

  while (ok - ng).abs > 1
    mid = (ng + ok) / 2

    if block.call(mid)
      ok = mid
    else
      ng = mid
    end
  end

  ok
end
