# frozen_string_literal: true

xa, ya, xb, yb, xc, yc = gets.split.map(&:to_i)
puts(((xa - xc) * (yb - yc) - (xb - xc) * (ya - yc)).abs / 2.0)
