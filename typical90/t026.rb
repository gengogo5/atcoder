# グラフを彩色する
## pos 探索地点
## cur 2色(0,1)
## grp グラフ
## col 色の記録
def dfs_paircol(pos, cur, grp, col)
  # 未彩色は-1が入っている前提
  col[pos] = cur
  # 隣接接点すべてを探索する
  grp[pos].each do |i|
    next if col[i] != -1
    # 1 - curで互い違いの色を指定できる
    dfs_paircol(i, 1 - cur, grp, col)
  end
end

N = gets.to_i
A,B = (N-1).times.map { gets.split.map(&:to_i) }.transpose

G = Array.new(N+1) {[]}
(N-1).times do |i|
  G[A[i]] << B[i]
  G[B[i]] << A[i]
end

# 彩色する
col = Array.new(N+1, -1)
dfs_paircol(1, 1, G, col)

# 色ごとにグループ分け
g1 = []
g2 = []
(N+1).times do |i|
  g1 << i if col[i] == 0
  g2 << i if col[i] == 1
end

# 先頭のN/2要素を出力
if g1.size > g2.size
  puts g1[0, N/2].join(" ")
else
  puts g2[0, N/2].join(" ")
end
