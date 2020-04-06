# frozen_string_literal: true

s = gets.chomp
t = gets.chomp

c = s.length

ans = 'No'

c.times do
  if s == t
    ans = 'Yes'
    break
  end

  s = s[1...c] << s[0]
end

puts ans
