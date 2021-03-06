# frozen_string_literal: true

s = gets.chomp

weekdays = {
  "SUN" => 7,
  "MON" => 6,
  "TUE" => 5,
  "WED" => 4,
  "THU" => 3,
  "FRI" => 2,
  "SAT" => 1,
}
puts weekdays[s]
