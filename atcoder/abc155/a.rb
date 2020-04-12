# frozen_string_literal: true

Ns = gets.chomp.split(" ").map(&:to_i)
puts Ns.uniq.count == 2 ? "Yes" : "No"
