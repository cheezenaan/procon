# frozen_string_literal: true

n = gets.to_i
vs = gets.split.map(&:to_i).sort!

puts vs.inject(vs[0]) { |r, v| (r + v) / 2.0 }
