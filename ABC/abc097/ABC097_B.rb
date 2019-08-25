X = gets.to_i
h = {}
h[1] = true
(2..X).each do |b|
  (2..X).each do |p|
    h[b**p] = true
    break if b**p > X
  end
end
X.downto(0) do |x|
  if h[x]
    puts x
    break
  end
end
