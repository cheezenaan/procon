n = gets.to_i
as = gets.split.map(&:to_i)

x = as.count(&:odd?)
z = as.count { |a| a % 4 == 0 }
y = n - x - z

if y == 0
  puts x <= z + 1 ? "Yes" : "No"
else
  puts x <= z ? "Yes" : "No"
end
