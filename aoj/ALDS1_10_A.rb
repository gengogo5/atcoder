N = gets.to_i

dp = [1,1]

if N <= 1
  puts 1
else
  (2..N).each do |i|
    dp << dp[i-1] + dp[i-2]
  end
  puts dp[N]
end