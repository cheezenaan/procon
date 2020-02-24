# frozen_string_literal: true

n = gets.to_i
s = gets.chomp

ans = s.chars

n.times do
  0.upto(s.size - 1) do |i|
    ans[i] = ans[i].next[-1]
  end
end

print ans.join('')
