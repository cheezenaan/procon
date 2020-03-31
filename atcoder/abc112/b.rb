# frozen_string_literal: true

n, t = gets.split.map(&:to_i)

ans = nil

n.times do
  ci, ti = gets.split.map(&:to_i)
  next if ti > t

  ans = ci if ans.nil? || ci <= ans
end

puts ans || 'TLE'
