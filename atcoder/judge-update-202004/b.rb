# frozen_string_literal: true

n = gets.to_i
xcs = n.times
  .map { gets.split }
  .sort! { |a, b| (a[0].to_i <=> b[0].to_i) }

xcs.select { |_n, col| col == "R" }
  .each { |n, _col| puts n }
xcs.select { |_n, col| col == "B" }
  .each { |n, _col| puts n }
