# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
ans = Array.new(n, 0)

m.times do
  s, c = gets.split.map(&:to_i)

  if n >= 2 && s == 1 && c == 0
    ans[0] = -1
  elsif ans[s - 1] != 0 && ans[s - 1] != c
    ans[s - 1] = -1
  else
    ans[s - 1] = c
  end
end

ans[0] = 1 if n >= 2 && ans[0] == 0
puts ans.any? { |v| v == -1 } ? -1 : ans.join
