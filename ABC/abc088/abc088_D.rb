def enclose(darray, fill)
  new_one = darray.map(&:dup)
  m = darray[0].length
  new_one.unshift(Array.new(m) {fill}) # 上
  new_one.push(Array.new(m) {fill}) # 下
  new_one.each { |a| a.push(fill).unshift(fill)  } # 左右
  new_one
end

def bfs(graph, dist)
  queue = []
  dist[1][1] = 0 # 始点に0
  queue << [1,1] # 始点を探索先へ

  while !queue.size.zero?
    i,j = queue.shift # 探索先を取り出す
    [[1,0],[-1,0],[0,1],[0,-1]].each do |(di,dj)| # 4方向に探索
      next if dist[i+di][j+dj] != -1 # 探索済はスキップ or 領域外
      next if graph[i+di-1][j+dj-1] == '#' # 壁はスキップ ※ここだけ0オリジンに
      dist[i+di][j+dj] = dist[i][j] + 1 # 距離に1加算
      queue << [i+di,j+dj] # 探索先に追加
    end
  end
  dist
end

# 開始(1,1)
H,W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp.chars }

cells = 0
H.times do |i|
  cells += S[i].count('.')
end

d = Array.new(H) { Array.new(W) {-1} }
dist = enclose(d, 10000) # 外壁作り

result = bfs(S, dist)

if result[H][W] == -1
  puts -1
else
  # 通れる全マス数から最短ルートのマス数(+スタート地点)を引く
  puts cells - (result[H][W] + 1)
end