# frozen_string_literal: true

require 'prime'

x = gets.to_i

puts Prime.find { |n| n >= x }
