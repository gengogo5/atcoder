# Tが帰還時刻
N,M,T = gets.split.map(&:to_i)

# カフェの滞在時間
A,B = M.times.map { gets.split.map(&:to_i) }.transpose

bt = N # バッテリー
nw = 0 # 現在時刻

safe = true
M.times do |i|
  bt = [bt - (A[i] - nw),0].max #店に着くまでに減る分
  if bt == 0
    safe = false
    break
  end
  bt = [bt + (B[i] - A[i]),N].min
  nw = B[i]
end

if safe && (bt - (T - nw)) > 0
  puts 'Yes'
else
  puts 'No'
end
