S = gets.chomp
T = gets.to_i
# 初期座標
x = 0
y = 0
# 移動後の座標
x -= S.count('L')
x += S.count('R')
y += S.count('U')
y -= S.count('D')
z = S.count('?')

# 最大値・最小値
if T == 1
  p x.abs + y.abs + z
else
  d = x.abs + y.abs
  p [d-z, S.length % 2].max
end
