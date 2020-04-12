# frozen_string_literal: true

def dist(a, b)
  Math.sqrt((a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2)
end

n = gets.to_i
xys = n.times.map { gets.split.map(&:to_i) }

routes = [*0..n - 1].permutation
ans = 0

routes.each do |r|
  (n - 1).times do |i|
    a = r[i]
    b = r[i + 1]
    ans += dist(xys[a], xys[b])
  end
end

puts ans / routes.count
