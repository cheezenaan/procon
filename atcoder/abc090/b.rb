def palindrome?(string)
  string.length.times do |i|
    return false unless string[i] == string[-(i + 1)]
  end

  true
end

a, b = gets.split.map(&:to_i)

puts a.upto(b).count { |n| palindrome?(n.to_s) }
