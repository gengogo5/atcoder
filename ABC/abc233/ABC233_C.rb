$n,$x = gets.split.map(&:to_i)
$L = $n.times.map { gets.split.map(&:to_i) }

$ans = 0

# DFSで全探索する
def dfs(pos, seki)
  if pos == $n # N個目の袋まで掛け算した
    $ans += 1 if seki == $x
    return
  end

  # 今の袋に入っている個数分DFSで再帰
  len = $L[pos][0]
  len.times do |j|
    c = $L[pos][j+1]
    next if seki > $x / c
    # 次の袋へ、cを累積して渡す
    dfs(pos + 1, seki * c)
  end
end

dfs(0,1)

puts $ans