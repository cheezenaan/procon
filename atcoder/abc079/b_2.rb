LUCAS = [2, 1]

def lucas_of(num)
  return LUCAS[num] if num <= 1 || LUCAS[num]

  LUCAS[num] = lucas_of(num - 2) + lucas_of(num - 1)
end

n = gets.to_i
puts lucas_of(n)
