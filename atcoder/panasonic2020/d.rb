# frozen_string_literal:false

def dfs(str, max, depth)
  return puts str if str.length == depth

  "a".upto(max) do |c|
    dfs(str + c, (c == max ? max.succ : max), depth)
  end
end

n = gets.to_i
dfs("", "a", n)
