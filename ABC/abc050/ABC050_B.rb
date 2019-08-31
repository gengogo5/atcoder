N = gets.to_i
T = gets.split.map(&:to_i)
M = gets.to_i
P,X = M.times.map { gets.split.map(&:to_i) }.transpose

sum_t = T.inject(:+)
M.times do |i|
  # 合計からブースト問題の時間を差し替える
  p sum_t - T[P[i]-1] + X[i]
end
