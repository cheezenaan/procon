# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
ahw = h.times.map { gets.chomp.split("") }

ahw.select { |ah| ah.include?("#") }
   .transpose
   .select { |aw| aw.include?("#") }
   .transpose.map(&:join)
   .each { |ah| puts ah }
