# frozen_string_literal: true

h, a = gets.split.map(&:to_i)
puts h.fdiv(a).ceil
