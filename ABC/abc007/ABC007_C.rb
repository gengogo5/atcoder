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
  dist[si][sj] = 0 # 始点は0
  queue << [si,sj]

  dirs = [[1,0],[-1,0],[0,1],[0,-1]]
  while !queue.size.zero?
    i,j = queue.shift
    dirs.each do |(dy,dx)|
      next if graph[i+dy][j+dx] == '#' # 壁は探索しない
      next if dist[i+dy][j+dx] != -1 # 探索済は探索しない
      dist[i+dy][j+dx] = dist[i][j] + 1 # 距離を1加算
      queue << [i+dy,j+dx] # 探索対象に追加
    end
  end
  dist
end

R,C = gets.split.map(&:to_i)
sy,sx = gets.split.map(&:to_i)
gy,gx = gets.split.map(&:to_i)
c = R.times.map { gets.chomp.chars }

# 領域外を埋める
# 1オリジンでグラフアクセス可にする
graph = enclose(c, '#')

dist_t = Array.new(R) { Array.new(C) {-1} }
dist = enclose(dist_t, Float::INFINITY)

result = bfs(sy,sx,graph,dist)

puts result[gy][gx]