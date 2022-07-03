N,D = gets.split.map(&:to_i)
# Rの昇順で並べ替える
L,R = N.times.map { gets.split.map(&:to_i) }.sort { |a,b| a[1] <=> b[1] }.transpose

x = -10000000001 # 最後にパンチした座標
cnt = 0
N.times do |i|
  # 最後にパンチした場所+D-1までは破壊済
  if L[i] > x + D - 1 # 壁が破壊されていない場合
    x = R[i] # 右端をパンチするのが最も効率が良い
    cnt += 1
  end
  # 壁が破壊されている場合は何もしない
end
puts cnt