n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

steps = Array.new(n + 1, -1)
visited = []
to_visit = 1

while steps[to_visit] == -1
  steps[to_visit] = visited.size
  visited << to_visit
  to_visit = as[to_visit - 1]
end

i = steps[to_visit]
cycles = visited.size - i

if k < i
  puts visited[k]
else
  puts visited[i + ((k - i) % cycles)]
end
