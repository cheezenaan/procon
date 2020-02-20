# frozen_string_literal: true

N, M = gets.split.map(&:to_i)
L, R = M.times.map { gets.split.map(&:to_i) }.transpose
diff = R.min - L.max

puts diff >= 0 ? diff + 1 : 0
