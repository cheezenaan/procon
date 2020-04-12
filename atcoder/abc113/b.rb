# frozen_string_literal: true

n = gets.to_i
t, a = gets.split.map(&:to_i)
hs = gets.split.map(&:to_f)

ans = 1
diff = (-60 - 10 ** 5 * 0.006).abs

hs.each.with_index(1) do |h, i|
  ai = t - h * 0.006
  d = (ai - a).abs

  if d <= diff
    ans = i
    diff = d
  end
end

puts ans
