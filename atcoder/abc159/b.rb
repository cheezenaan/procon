# frozen_string_literal: true

def is_paindrome?(arr, len)
  len.times do |i|
    if arr[i] != arr[-(i + 1)]
      puts 'No'
      exit 0
    end
  end
end

s = gets.chomp

len = s.length
mid = len / 2

s1 = s[0..mid - 1]
s2 = s[mid + 1..-1]

is_paindrome?(s, len)
is_paindrome?(s1, s1.length)
is_paindrome?(s2, s2.length)

puts 'Yes'
