# frozen_string_literal: true

w, h, x, y = gets.split.map(&:to_i)

smax = w * h / 2.0
doubled = x == w / 2.0 && y == h / 2.0

puts [smax, doubled ? 1 : 0].join(" ")
