# frozen_string_literal: true

def bfs(limit)
  queue = [*1..9]
  count = 0

  until queue.empty?
    x = queue.shift
    count += 1

    return x if count == limit

    d = x % 10

    if d == 0
      queue << 10 * x
      queue << 10 * x + 1
    elsif d == 9
      queue << 10 * x + d - 1
      queue << 10 * x + d
    else
      queue << 10 * x + d - 1
      queue << 10 * x + d
      queue << 10 * x + d + 1
    end
  end
end

k = gets.to_i

puts bfs(k)
