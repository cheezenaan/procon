# frozen_string_literal: true

def counts(n, div1, div2)
  (n / div1) + (n / div2) - (n / div1.lcm(div2))
end

a, b, c, d = gets.split.map(&:to_i)

counts_a = (a - 1) - counts((a - 1), c, d)
counts_b = b - counts(b, c, d)

puts counts_b - counts_a
