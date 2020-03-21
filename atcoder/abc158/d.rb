# frozen_string_literal: false

s = gets.chomp
q = gets.to_i
queries = q.times.map { gets.split }

s1 = ''
s2 = s
reversed = false

queries.each do |t, f, c|
  if t.to_i == 1
    reversed = !reversed
    next
  end

  if (f.to_i == 1 && reversed) || (f.to_i == 2 && !reversed)
    s2 << c
  else
    s1 << c
  end
end

if reversed
  puts s2.reverse! << s1
else
  puts s1.reverse! << s2
end
