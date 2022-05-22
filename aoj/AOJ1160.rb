# 8方向を示す配列
$dis = [-1,0,1].repeated_permutation(2).to_a
$dis.delete([0,0])

def dfs(i, j, map, visited)
  return if visited[i][j] # 探索済頂点なら抜ける
  visited[i][j] = true

  # 探索対象の頂点と接している頂点をすべて回る
  $dis.each do |(x,y)|
    # 領域外をスキップ
    next if (i + x) < 0 || (j + y) < 0 || (i + x) >= map.size || (j + y) >= map[0].size
    next if map[i+x][j+y] == 0 # 海は探索しない
    dfs(i+x, j+y, map, visited)
  end
end

answers = []
loop do 
  w,h = gets.split.map(&:to_i)
  break if w == 0 && h == 0 # 入力終わり

  mp = h.times.map { gets.split.map(&:to_i) }

  visited = Array.new(h) { Array.new(w) { false }}

  ans = 0
  h.times do |i|
    w.times do |j|
      # 未到達の陸の場合だけDFS対象
      if mp[i][j] == 1 && !visited[i][j]
        ans += 1 # DFSした数をカウント
        # マス1つごとにDFSする
        dfs(i, j, mp, visited)
      end
    end
  end
  answers << ans
end

answers.each do |ans|
  puts ans
end