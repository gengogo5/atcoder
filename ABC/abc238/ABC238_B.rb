N = gets.to_i
A = gets.split.map(&:to_i)

pz = [0]
here = 0
A.each do |a|
  if here + a <= 359
    here += a
    pz << here
  else
    here = (here + a - 360)
    pz << here
  end
end

mx = 1
pz = pz.sort
pz << 360
(1..N+1).each do |i|
  dif = pz[i] - pz[i-1]
  mx = dif if dif > mx
end

puts mx