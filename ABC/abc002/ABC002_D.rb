def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end
N,M = gets.split.map(&:to_i)

frd = darray(13,13,false)
M.times do |i|
  x,y = gets.split.map(&:to_i)
  frd[x][y] = true
  frd[y][x] = true
end

# 人の組み合わせをbit全探索する
# Nが最大12なので可
# 1になっている人たちで1派閥にできるかどうかの判定
mx = 0
(2 ** N).times do |i|
  group = []
  N.times do |j|
    group << j+1 if (i & (1 << j)) != 0
  end
  # 1になっている人同士でグループが成立するかを全人間関係と突き合わせる
  is_habatsu = true
  group.combination(2).each do |grp|
    if !frd[grp[0]][grp[1]]
      is_habatsu = false
      break
    end
  end
  if is_habatsu
    mx = [mx, group.size].max
  end
end

puts mx