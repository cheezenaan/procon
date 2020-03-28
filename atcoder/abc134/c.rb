# frozen_string_literal: true

n = gets.to_i
as = n.times.map { gets.to_i }

counts = Hash.new(0)
as.each do |a|
  counts[a] += 1
end
keys = counts.keys.sort
max = keys.last

as.each do |a|
  if a == max && counts[max] < 2
    puts keys[-2]
  else
    puts max
  end
end
