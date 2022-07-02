def bfs(i,j,graph)
  dist = Array.new($h) { Array.new($w,-1) }
  queue = []

  dist[i][j] = 1
  queue << [i,j]

  while(!queue.empty?)
    ti,tj = queue.shift

    if $h > ti+1 && graph[ti+1][tj] != '#' && dist[ti+1][tj] == -1
      dist[ti+1][tj] = dist[ti][tj] + 1
      $mx = dist[ti+1][tj] if dist[ti+1][tj] > $mx
      queue << [ti+1,tj]
    end
    if $w > tj+1 && graph[ti][tj+1] != '#' && dist[ti][tj+1] == -1
      dist[ti][tj+1] = dist[ti][tj] + 1
      $mx = dist[ti][tj+1] if dist[ti][tj+1] > $mx
      queue << [ti,tj+1]
    end
  end
end
$h,$w = gets.split.map(&:to_i)
$n = 0
$mx = 1
C = $h.times.map { gets.chomp.chars }

bfs(0,0,C)

puts $mx