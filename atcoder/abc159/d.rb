# frozen_string_literal: true

n = gets.to_i
as = gets.split.map(&:to_i)

cs = as.each_with_object(Hash.new(0)) do |a, h|
  h[a] += 1
end

sum = cs.values.inject(0) do |r, v|
  r + v * (v - 1) / 2
end

as.each do |a|
  c = cs[a]
  diff = (c - 1) # c * (c - 1) / 2 - (c - 1) * (c - 2) / 2

  puts sum - diff
end
