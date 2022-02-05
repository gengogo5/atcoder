# 各行の総和、各列の総和を事前に求めておく
# Hの総和とWの総和から該当セルの値を引けばそのセルの答えが出る

H,W = gets.split.map(&:to_i)
A = H.times.map { gets.split.map(&:to_i) }
def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end
# 入力時に足せそうではある

# 各行の総和
r_sums = H.times.map { |i| A[i].sum }

# 各列の総和
Ai = A.transpose
c_sums = W.times.map { |i| Ai[i].sum }

ans = darray(H,W)
H.times do |h|
  W.times do |w|
    ans[h][w] = r_sums[h] + c_sums[w] - A[h][w]
  end
  # 結果出力
  puts ans[h].join(" ")
end
