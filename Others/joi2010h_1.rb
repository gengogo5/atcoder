# https://www.ioi-jp.org/joi/2009/2010-ho-prob_and_sol/2010-ho.pdf#page=2
# 旅人
# N個の宿場町、M日間で移動
N,M = gets.split.map(&:to_i)
D = [0] # 宿場町間の距離の累積和
(N-1).times do |i|
  D << D[i] + gets.to_i
end
P = M.times.map { gets.to_i }

sum = 0
at = 1
M.times do |i|
  #puts "i:#{i} at:#{at} to:#{P[i]} w:#{D[at-1+P[i]] - D[at-1]}"
  sum += (D[at-1+P[i]] - D[at-1]).abs % 100000
  at = at + P[i]
end

puts sum % 100000
