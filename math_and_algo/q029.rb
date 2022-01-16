N = gets.to_i

# 0段目からi段目に行くパターン数
dp = []

(0..N).each do |i|
  if i == 0 || i == 1
    dp[i] = 1
  else
    dp[i] = dp[i-1] + dp[i-2]
  end
end

puts dp[N]
