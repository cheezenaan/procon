# frozen_string_literal: true

S = gets.chomp
alphas = ('a'..'z').to_char

ans = 'None'
alphas.each do |a|
  unless S.include?(a)
    ans = a
    break
  end
end

puts ans
