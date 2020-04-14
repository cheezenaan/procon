w = gets.chomp.chars

ans = "Yes"

("a".."z").each do |c|
  if w.count(c).odd?
    ans = "No"
    break
  end
end

puts ans
