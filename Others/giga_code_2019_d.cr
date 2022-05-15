HWKV = read_line.split.map(&.to_i64)
H = HWKV[0]
W = HWKV[1]
K = HWKV[2]
V = HWKV[3]
A = Array.new(H) { read_line.split.map(&.to_i64) }

# 二次元の累積和
R = Array.new(H+1) { Array.new(W+1, 0_i64) }
H.times do |i|
  W.times do |j|
    R[i+1][j+1] = R[i][j+1] + R[i+1][j] - R[i][j] + A[i][j]
  end
end

# 長方形を全探索
mx = 0_i64
(1..H).each do |i|
  (1..W).each do |j| # 始点i,jの全探索
    (i..H).each do |k|
      (j..W).each do |l| # 終点k,lの全探索
        cost = R[k][l] - R[i-1][l] - R[k][j-1] + R[i-1][j-1] # 土地
        s = (1_i64+k-i) * (l-j+1_i64) # i64を先に書かないとオーバーフローする
        cost += s * K # 建物
        mx = s if cost <= V && mx < s
      end
    end
  end
end

# p R デバッグ

# V円以内で買える最も大きい面積
puts mx