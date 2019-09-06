N = gets.to_i
# 重複排除 -> ソート -> 末尾から2番目を出力
A = N.times.map { gets.to_i }.uniq.sort
p A[-2]
