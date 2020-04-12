# frozen_string_literal: true

def payable?(n, a, b, x)
  a * n + b * n.to_s.length <= x
end

def bsearch(arr_or_range, &block)
  ok = 0
  ng = arr_or_range.size

  while (ng - ok).abs > 1
    mid = (ng + ok) / 2

    if block.call(mid)
      ok = mid
    else
      ng = mid
    end
  end

  ok
end

a, b, x = gets.split.map(&:to_i)
n_max = 10 ** 9

if payable?(n_max, a, b, x)
  puts n_max
else
  puts bsearch((1..x)) { |n| payable?(n, a, b, x) }
end
