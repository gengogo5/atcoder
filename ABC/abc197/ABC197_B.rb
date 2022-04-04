H,W,X,Y = gets.split.map(&:to_i)
# +1,-1を不要にする為に0行0列にnil番兵を置く
S = H.times.map { gets.chomp.chars.unshift(nil) }.unshift(Array.new(W+1){nil})

# X,Yの分を初期値に
v = 1

# 上方向
(X).downto(1) do |i|
  # ひとつ上が#か壁なら終了
  break if (S[i-1][Y].nil? || S[i-1][Y] == '#')
  v += 1
end

# 下方向
(X).upto(H) do |i|
  # ひとつ下が#か壁なら終了
  break if (S[i+1].nil? || S[i+1][Y] == '#')
  v += 1
end

# 右方向
(Y).upto(W) do |i|
  # ひとつ右が#か壁なら終了
  break if (S[X][i+1] == '#' || S[X][i+1].nil?)
  v += 1
end

# 左方向
(Y).downto(1) do |i|
  # ひとつ左が#か壁なら終了
  break if (S[X][i-1] == '#' || S[X][i-1].nil?)
  v += 1
end

puts v