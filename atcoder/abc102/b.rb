# frozen_string_literal: true

n = gets.to_i
as = gets.split.map(&:to_i)

puts as.minmax.inject(:-).abs
