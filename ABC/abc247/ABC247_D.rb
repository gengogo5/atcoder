Q = gets.to_i
query = Q.times.map { gets.split.map(&:to_i) }

queue = []

Q.times do |i|
  if query[i][0] == 1
    x = query[i][1]
    c = query[i][2]
    queue << [x,c] # 個数情報だけ入れる
  elsif query[i][0] == 2
    c = query[i][1]
    done = false
    ans = 0
    while (!done)
      if queue[0][1] > c # 取り切った場合
        ans += (c * queue[0][0])
        queue[0][1] -= c
        done = true
      elsif queue[0][1] < c # 足りない場合
        ans += (queue[0][0] * queue[0][1])
        c -= queue[0][1] # 次のループ用にcを減算
        queue.shift # キューから削除
      else
        ans += (c * queue[0][0])
        queue.shift # キューから削除
        done = true
      end
    end
    puts ans
  end
end