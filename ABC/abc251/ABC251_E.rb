N = gets.to_i
A = gets.split.map(&:to_i)

# iの餌やりの仕方を選んで、j匹の動物に餌をあげる時の最小額
dp = Array.new(N+1) { Array.new(2, Float::INFINITY) }

# 0: 行動1しない, 1: 行動1する
ans = Float::INFINITY
2.times do |t|
  dp[1][t] = A[0] * t
  dp[1][1-t] = Float::INFINITY

  (2..N).each do |i|
    dp[i][0] = dp[i-1][1]
    dp[i][1] = [dp[i-1][0], dp[i-1][1]].min + A[i-1]
  end
  ans = [ans,dp[N][1]].min if t == 0
  ans = [ans, [dp[N][0],dp[N][1]].min].min if t == 1
end

puts ans

# デバッグ
#dp.each do |line|
#  line.each do |it|
#    itm = it == Float::INFINITY ? 'X' : it
#    printf("%4s",itm.to_s)
#  end
#  puts ""
#end
