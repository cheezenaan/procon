s = gets.chomp
n = s.length

dp = Array.new(n) { Array.new(2 + 1, 0) }
dp[0][1] = dp[1][2] = 1

1.upto(n - 1) do |i|
  if s[i - 1] != s[i]
    # 1 -> 1
    dp[i][1] = [dp[i - 1][1], dp[i - 1][2]].max + 1
  else
    # 1 -> 2
    dp[i][1] = dp[i - 1][2] + 1
  end

  if s[i - 3..i - 2] != s[i - 1..i]
    # 2 -> 2
    dp[i][2] = [dp[i - 2][1], dp[i - 2][2]].max + 1
  else
    # 2 -> 1
    dp[i][2] = dp[i - 2][1] + 1
  end
end

puts [dp[n - 1][1], dp[n - 2][2]].max
