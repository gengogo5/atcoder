N = gets.to_i
B = gets.split.map(&:to_i)

s = 0
(N-1).times do |i|
  if i == 0
    s += B[0]
    next
  end
  s += [B[i],B[i-1]].min
end
s += B[-1] # 最後の要素分
p s
