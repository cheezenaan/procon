# frozen_string_literal: true

N = gets.to_i
S = N.times.map { gets.chomp }

# 要素の個数を集計する Hash を別に用意
counts = S.each_with_object(Hash.new(0)) { |s, h| h[s] += 1 }
max = counts.values.max

puts counts.select { |_k, v| v == max }.keys.sort
