N = gets.to_i
x,y = N.times.map { gets.split.map(&:to_i) }.transpose

routes = (1..N).to_a.permutation(N).to_a

sum = 0
routes.each do |r|
  (N-1).times do |i|
    d = Math.sqrt(((x[r[i]-1]-x[r[i+1]-1]) ** 2) + ((y[r[i]-1]-y[r[i+1]-1]) ** 2))
    sum += d
  end
end
p sum/routes.size
