# frozen_string_literal: true

s = gets.chomp
weathers = %w[Sunny Cloudy Rainy]

puts weathers[(weathers.find_index(s) + 1) % 3]
