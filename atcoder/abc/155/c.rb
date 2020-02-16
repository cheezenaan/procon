# frozen_string_literal: true

N = gets.to_i
S = N.times.map { gets.chomp }

# めちゃくちゃ TLE した
puts S.group_by { |s| S.count(s) }.values.last.reverse.uniq
