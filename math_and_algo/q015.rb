# 整数AとBの最大公約数を求める
# ユークリッドの互除法
a, b = gets.split.map(&:to_i)

ans = 0
while (a >= 1 && b >= 1) do
  if a > b
    a = a % b
  else 
    b = b % a
  end
end
ans = [a,b].max
puts ans
