n = gets.to_i
tc, xc, yc = [0, 0, 0]

ans = "Yes"

n.times do |i|
  tn, xn, yn = gets.split.map(&:to_i)

  t = tn - tc
  x = (xn - xc).abs
  y = (yn - yc).abs

  if t < x + y || (t - (x + y)).odd?
    ans = "No"
    break
  end

  tc, xc, yc = tn, xn, yn
end

puts ans
