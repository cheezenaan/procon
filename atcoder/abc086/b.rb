# frozen_string_literal: true

ab = gets.split.join.to_i

puts Math.sqrt(ab).floor == Math.sqrt(ab) ? "Yes" : "No"
