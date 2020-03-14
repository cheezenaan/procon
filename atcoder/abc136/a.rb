# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)

rest = c - (a - b)
puts rest >= 0 ? rest : 0
