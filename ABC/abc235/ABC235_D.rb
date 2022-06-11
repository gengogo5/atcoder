a, N = gets.split.map(&:to_i)

MAX_N = 10 ** 6

dist = Array.new(MAX_N + 1, Float::INFINITY)
queue = []

dist[1] = 0 # 1へは変化コストなし
queue << 1 # 始点をキューに追加

while (!queue.empty?)
  x = queue.shift
  new_cost = dist[x] + 1 # 操作後の総コスト

  # 操作1 xをa倍する
  nx1 = x * a
  if nx1 < MAX_N && new_cost < dist[nx1]
    dist[nx1] = new_cost
    queue << nx1 # 走査対象にa倍の数を追加
  end

  # 操作2 末尾を先頭に移動するやつ
  if x >= 10 && x % 10 != 0
    xs = x.to_s
    nx2 = (xs[-1] + xs[0..-2]).to_i
    if new_cost < dist[nx2]
      dist[nx2] = new_cost
      queue << nx2 # 走査対象に追加
    end
  end
end

if dist[N] == Float::INFINITY
  puts -1
else
  puts dist[N]
end