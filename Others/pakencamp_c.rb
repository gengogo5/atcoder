N,M = gets.split.map(&:to_i)
A = N.times.map { gets.split.map(&:to_i) }

mx = 0
(1..M).to_a.combination(2).to_a.each do |m|
  sum = 0
  N.times do |i|
    sum += [A[i][m[0]-1],A[i][m[1]-1]].max
  end
  mx = sum if mx < sum
end

puts mx