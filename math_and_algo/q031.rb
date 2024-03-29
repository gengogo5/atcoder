# 動的計画法
N = gets.to_i
A = gets.split.map(&:to_i)

dp1 = [] # i日目に勉強する場合の実力アップの最大値
dp2 = [] # i日目に勉強しない場合の実力アップの最大値
dp1[0] = 0
dp2[0] = 0

(1..N).each do |i|
  # i日目に勉強する場合、i-1日目に勉強しなかった場合の実力アップ最大値に、勉強分の上昇を足す
  dp1[i] = dp2[i-1] + A[i-1]
  # i日目に勉強しなかった場合、i-1日目に勉強した場合と、i-1日目に勉強しなかった場合の大きい方を取る
  dp2[i] = [dp1[i-1],dp2[i-1]].max
end

puts [dp1[N], dp2[N]].max
