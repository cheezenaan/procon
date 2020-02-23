# frozen_string_literal: true

def cin
  gets.split.map(&:to_i)
end

# ex. cumsum([1,2,2,4,5]) => [0,1,3,5,9,14]
def cumulate(raw)
  raw.each_with_object([0]) { |v, a| a << a.last + v }
end

n, k = cin
p = cin

s = cumulate(p)
max = s[k]

(k..n).each do |j|
  sum = s[j] - s[j - k]
  max = sum if sum > max
end

puts (max + k) / 2.0
