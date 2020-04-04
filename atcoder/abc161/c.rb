# frozen_string_literal: true

n, k = gets.split.map(&:to_i)

ans = n

while ans >= 1
  if ans <= k
    if (ans - k).abs <= ans
      ans = (ans - k).abs
      break
    else
      break
    end
  end

  ans %= k
end

puts ans
