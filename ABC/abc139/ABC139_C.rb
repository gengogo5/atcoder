N = gets.to_i
H = gets.split.map(&:to_i)
L = [0]

crn = 0
(1...N).each do |i|
  if H[i-1] >= H[i]
    L[crn] += 1
  else
    crn += 1
    L << 0
  end
end
p L.max
