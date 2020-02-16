# frozen_string_literal: true

N = gets.to_i
S = N.times.map { gets.chomp }

# 要素の個数を集計する Hash を別に用意
h = Hash.new(0)
S.each { |s| h[s] += 1 }
max = h.values.max

puts h.select { |_k, v| v == max }.keys.sort
