# frozen_string_literal: true

a, b, = gets.split.map(&:to_i).sort
puts a.to_s * b
