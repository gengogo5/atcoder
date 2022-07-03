N,W = gets.split.map(&:to_i)
# 1gあたりの美味しさの降順にソート
A,B = N.times.map { gets.split.map(&:to_i) }.sort { |a,b| b[0] <=> a[0] }.transpose

# Wまで貪欲
w = 0
o = 0
N.times do |i|
  if w + B[i] >= W
    # 打ち止め
    o += A[i] * (W - w)
    break
  else
    # 全部乗せる
    w += B[i]
    o += (A[i] * B[i])
  end
end

puts o