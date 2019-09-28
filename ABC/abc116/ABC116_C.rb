N = gets.to_i
h = gets.split.map(&:to_i)

cnt = 0
# hがなくなったら終了
while h.length != 0
  done = false
  # 先頭から0まで水をあげる
  h.length.times do |i|
    if h[i] != 0
      h[i] -= 1
      done = true
    else
      break
    end
  end
  cnt += 1 if done

  # 先頭から連続する0を取り除く
  while h[0] == 0
    h.shift
  end
end

p cnt
