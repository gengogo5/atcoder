# 正直理解し切れてない
N,M,K = gets.split.map(&:to_i)

dp = Array.new(N+1) { Array.new(K+1,0) }
dp[0][0] = 1

N.times do |i| # 数列の何文字目まで使うか
  K.times do |j| # 総和がいくつか
    (1..M).each do |k| # k個の要素を足し合わせる
      dp[i+1][j+k] += dp[i][j] if j+k <= K
    end
  end
end

ans = 0
dp[N].each do |n|
  ans += n % 998244353
end

puts ans % 998244353