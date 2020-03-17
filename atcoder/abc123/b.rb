# frozen_string_literal: true

def diff2next10(num)
  num % 10 != 0 ? num % 10 : 10
end

dishes = 5.times.map { gets.to_i }
last = dishes.min { |a, b| diff2next10(a) <=> diff2next10(b) }

ans = 0
last_ordered = false

dishes.each do |d|
  if d == last && !last_ordered
    ans += d
    last_ordered = true
  else
    ans += d + (10 - diff2next10(d)).abs
  end
end

puts ans
