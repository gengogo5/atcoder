def enclose(darray, fill)
  new_one = darray.map(&:dup)
  m = darray[0].length
  new_one.unshift(Array.new(m) {fill}) # 上
  new_one.push(Array.new(m) {fill}) # 下
  new_one.each { |a| a.push(fill).unshift(fill)  } # 左右
  new_one
end

def bfs(si,sj,graph,dist)
  queue = []
  dist[si][sj] = 0 # 始点を0に
  queue << [si,sj] # 始点を探索対象に

  while !queue.size.zero?
    i,j = queue.shift
    [[1,0],[-1,0],[0,1],[0,-1]].each do |(di,dj)|
      next if graph[i+di][j+dj] == 'X' # 空き地は通れない(兼領域外回避)
      next if dist[i+di][j+dj] != -1 # 探索済は通らない
      dist[i+di][j+dj] = dist[i][j] + 1 # 距離に1加算
      queue << [i+di,j+dj] # 探索対象に追加
    end
  end
  dist
end

H,W,N = gets.split.map(&:to_i)
# 巣:S 障害物:X 空き地:. チーズ工場:[1-9]
g = H.times.map { gets.chomp.chars }
graph = enclose(g, 'X')

# チーズ工場の場所を大きさ順に格納
# 入力時でもできるがサボることにする
cheese_at = Array.new(N)
mi = 0
mj = 0
graph.each.with_index do |line,i|
  line.each.with_index do |cell,j|
    cheese_at[cell.to_i-1] = [i,j] if cell.match(/\d/)
    if cell == 'S' # 開始地点を変数へ代入
      mi = i
      mj = j
    end
  end
end

sum = 0 # 解答用
cheese_at.each do |(i,j)|
  dist = Array.new(H+1) { Array.new(W+1) {-1}}
  result = bfs(mi,mj,graph,dist)

  sum += result[i][j] # チーズ工場までの最短距離を加算

  # ネズミの位置をチーズ工場に変更
  mi = i
  mj = j
end

puts sum