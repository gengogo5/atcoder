N = gets.to_i
h = gets.split.map(&:to_i)

# dp[i]に到達するまでの最小コスト
dp = []
N.times do |i|
  if i == 0
    dp[i] = 0 # 最初の足場からは移動無しなので0
  elsif i == 1
    dp[i] = (h[i-1]-h[i]).abs # h[0]->h[1]の方法しかない
  else
    # 2つ前から飛ぶか、1つ前から飛ぶか、コストの安い方をdp[i]とする
    v1 = dp[i-1] + (h[i-1]-h[i]).abs
    v2 = dp[i-2] + (h[i-2]-h[i]).abs
    dp[i] = [v1,v2].min
  end
end

puts dp[N-1]
