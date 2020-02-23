# frozen_string_literal: true

N, K, M = gets.split.map(&:to_i)
current_total = gets.split.map(&:to_i).inject(:+)
target = N * M >= current_total ? N * M - current_total : 0

puts target <= K ? target : -1
