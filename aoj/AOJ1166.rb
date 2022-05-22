def bfs(wall, dist)
  queue = []
  dist[1][1] = 0 # 始点に0
  queue << [1,1] # 始点を探索対象に追加

  while !queue.size.zero?
    i,j = queue.shift
    [[0,1],[0,-1],[1,0],[-1,0]].each do |(di,dj)|
      next if dist[i+di][j+dj] != -1 # 探索済はスキップ
      # ここに壁情報でスキップさせる
      if di == 0 # 横移動できない
        next if dj == 1 && wall[2*(i-1)][j-1] == 1
        next if dj == -1 && wall[2*(i-1)][j-2] == 1
      else # 縦移動できない
        next if di == 1 && wall[2*(i-1)+1][j-1] == 1
        next if di == -1 && wall[2*(i-1)-1][j-1] == 1
      end
      # diかdjが0かどうかで縦か横かを判定する
      # 奇数行目は縦の壁(横移動できない)、偶数行目は横向きの壁(縦移動できない)
      dist[i+di][j+dj] = dist[i][j] + 1
      queue << [i+di,j+dj]
    end
  end
  dist
end
def enclose(darray, fill)
  new_one = darray.map(&:dup)
  m = darray[0].length
  new_one.unshift(Array.new(m) {fill}) # 上
  new_one.push(Array.new(m) {fill}) # 下
  new_one.each { |a| a.push(fill).unshift(fill)  } # 左右
  new_one
end
ans = []
loop do
  w,h = gets.split.map(&:to_i)
  break if w == 0 && h == 0
  wall = (2*h-1).times.map { gets.split.map(&:to_i) }
  d = Array.new(h) {Array.new(w) {-1}}
  dist = enclose(d,10000) # 外壁を作る
  result = bfs(wall, dist)
  ans << result[h][w] + 1
end
ans.each do |a|
  puts a
end