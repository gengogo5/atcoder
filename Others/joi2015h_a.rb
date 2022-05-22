N,M = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)
A,B,C = (N-1).times.map { gets.split.map(&:to_i) }.transpose

# 鉄道の使用回数を記録する
T = Array.new(N+1,0)
(1..(M-1)).each do |i|
  # 逆向き乗車を考慮する
  from, to = [P[i],P[i-1]].minmax
  # imos法で区間加算する
  T[from] += 1
  T[to] -= 1
end


sum_p = 0
# 切符かICどっちが安いかを鉄道ごとに計算する
(N-1).times do |i|
  T[i+1] += T[i] # 累積和
  k = A[i] * T[i+1]
  c = B[i] * T[i+1] + C[i]
  # 安い方を選ぶ
  sum_p += [k,c].min
end

puts sum_p
