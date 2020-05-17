n, m = gets.split.map(&:to_i)

graph = Array.new(n + 1) { [] }

m.times do
  a, b = gets.split.map(&:to_i)
  graph[a].push(b)
  graph[b].push(a)
end

dist = Array.new(n + 1, -1)
dist[1] = 0

que = []
que.push(1)

ans = Array.new(n + 1, -1)

until que.empty?
  v = que.shift

  graph[v].each do |nv|
    next if dist[nv] != -1

    dist[nv] = dist[v] + 1
    que.push(nv)
    ans[nv] = v
  end
end

puts "Yes"
puts ans[2..-1]
