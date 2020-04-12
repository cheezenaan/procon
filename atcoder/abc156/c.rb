# frozen_string_literal: true

n = gets.to_i
x = gets.split.map(&:to_i)
pmin, pmax = x.minmax

dist = Hash.new(0)
pmin.upto(pmax) do |p|
  dist[p] = x.inject(0) do |sum, xi|
    sum + ((xi - p) ** 2)
  end
end

puts dist.values.min
