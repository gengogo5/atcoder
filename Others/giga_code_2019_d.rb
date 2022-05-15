H,W,K,V = gets.split.map(&:to_i)
A = H.times.map { gets.split.map(&:to_i) }
# 想定解法だがTLE(crystal版で通した)

# 二次元の累積和
R = Array.new(H+1) { Array.new(W+1, 0) }
H.times do |i|
  W.times do |j|
    R[i+1][j+1] = R[i][j+1] + R[i+1][j] - R[i][j] + A[i][j]
  end
end

# 長方形を全探索
mx = 0
(1..H).each do |i|
  (1..W).each do |j| # 始点i,jの全探索
    (i..H).each do |k|
      (j..W).each do |l| # 終点k,lの全探索
        cost = R[k][l] - R[i-1][l] - R[k][j-1] + R[i-1][j-1] # 土地
        s = (k-i+1) * (l-j+1)
        cost += s * K # 建物
        mx = s if cost <= V && mx < s
      end
    end
  end
end

# p R デバッグ

# V円以内で買える最も大きい面積
puts mx