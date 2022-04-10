A,B,C,D = gets.split.map(&:to_i)

# 水色がA個
# 水色B個と赤色C個を追加できる
# 水色の個数が赤色のD倍以下になるかどうか

blue = A
red = 0
ans = -2
A.times do |i|
  blue += B
  red += C
  if blue <= red * D
    ans = i
    break
  end
end

puts ans + 1