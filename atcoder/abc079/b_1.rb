n = gets.to_i

lucas = [2, 1]

if n >= 2
  (n - 1).times do |i|
    lucas[i + 2] = lucas[i] + lucas[i + 1]
  end
end

puts lucas[n]
