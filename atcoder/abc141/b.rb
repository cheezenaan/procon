# frozen_string_literal: true

s = gets.chomp

ans = "Yes"
RUD = %w[R U D].freeze
LUD = %w[L U D].freeze

s.each_char.with_index do |v, i|
  next if i.even? && RUD.include?(v)
  next if i.odd? && LUD.include?(v)

  ans = "No"
end
puts ans
