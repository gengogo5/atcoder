N,M,K,S,T,X = gets.split.map(&:to_i)
edges = Array.new(N+1) { Array.new }
M.times do
  u,v = gets.split.map(&:to_i)
  edges[u] << v
  edges[v] << u
end

# dp[x][i][j] 頂点Sから辺をi回通って頂点jへ行く。その際に頂点Xを通った回数mod2がx
# 多次元配列は要素数が小さいものから先に作る
dp = Array.new(2) { Array.new(K+1) { Array.new(N+1,0) }}
dp[0][0][S] = 1 # 開始地点から動かない場合だけは辺を通らずに移動できる

K.times do |i|
  (1..N).each do |j|
    edges[j].each do |k|
      if k == X
        dp[1][i+1][j] += dp[0][i][k] % 998244353
        dp[0][i+1][j] += dp[1][i][k] % 998244353
      else
        dp[1][i+1][j] += dp[1][i][k] % 998244353
        dp[0][i+1][j] += dp[0][i][k] % 998244353
      end
    end
  end
end

puts dp[0][K][T] % 998244353