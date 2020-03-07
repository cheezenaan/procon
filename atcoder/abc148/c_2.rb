# frozen_string_literal: true

def gcm(a, b)
  return a if b == 0

  gcm(b, a % b)
end

def lcm(a, b)
  (a * b) / gcm(a, b)
end

a, b = gets.split.map(&:to_i)

puts lcm(a, b)
