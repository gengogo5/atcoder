N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

lm = -9 # 最後に食べたメニュー
s = 0 # 満足度
N.times do |i|
  s += B[A[i]-1] # 通常の満足度
  s += C[lm] if (A[i]-1) - lm == 1 # 連続ボーナス
  lm = A[i] - 1
end
p s
