# frozen_string_literal: true

n = gets.to_i
vs = gets.split.map(&:to_i).sort!

ans = vs.shift
ans = (ans + vs.shift) / 2.0 until vs.empty?

puts ans
