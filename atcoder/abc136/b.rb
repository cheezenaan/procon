# frozen_string_literal: true

n = gets.to_i

ans = 1.upto([n, 9].min).count
ans += 100.upto([n, 999].min).count if n >= 100
ans += 10_000.upto([n, 99_999].min).count if n >= 10_000

puts ans
