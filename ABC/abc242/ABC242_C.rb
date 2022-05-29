N = gets.to_i
MOD = 998244353

dp = Array.new(10) { Array.new(N+1,0) }
(1..9).each do |i|
  dp[i][1] = 1
end

(2..N).each do |j|
  (1..9).each do |i|
    if i == 1
      dp[i][j] = dp[i][j-1] % MOD + dp[i+1][j-1] % MOD
    elsif i == 9
      dp[i][j] = dp[i][j-1] % MOD + dp[i-1][j-1] % MOD
    else
      dp[i][j] = dp[i-1][j-1] % MOD + dp[i][j-1] % MOD + dp[i+1][j-1] % MOD
    end
  end
end

sum = 0
(1..9).each do |i|
  sum += dp[i][N] % MOD
end

puts sum % MOD