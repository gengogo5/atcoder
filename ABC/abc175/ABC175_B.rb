N = gets.to_i
L = gets.split.map(&:to_i).sort

cnt = 0
L.combination(3).to_a.each do |(a,b,c)|
  if (a < b) && (b < c) && (a + b) > c && (b - a) < c
    cnt += 1 
  end
end

puts cnt