# frozen_string_literal: true

n = gets.to_i
x = gets.split.map(&:to_i)
pmin, pmax = x.minmax

dist = Hash.new(0)
pmin.upto(pmax) do |p|
  sum = x.inject(0) do |r, a|
    r + ((a - p)**2)
  end
  dist[p] = sum
end

puts dist.values.min
