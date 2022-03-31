N = gets.to_i
xy = N.times.map { gets.split.map(&:to_i) }

cnt = 0
xy.combination(2).to_a.each do |(xy1,xy2)|
  m = (xy2[1] - xy1[1]) / (xy2[0] - xy1[0]).to_f
  cnt += 1 if m >= -1 && m <= 1
end

puts cnt