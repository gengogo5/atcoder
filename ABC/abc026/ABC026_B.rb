N = gets.to_i
R = N.times.map { gets.to_i }.sort.reverse

s = 0
(0...N).each do |i|
  if i == N-1 && N.odd?
    s += (R[i] ** 2 * Math::PI)
    break
  end
  next if i.odd?
  s += ((R[i] ** 2 * Math::PI) - (R[i+1] ** 2 * Math::PI))
end

p s
