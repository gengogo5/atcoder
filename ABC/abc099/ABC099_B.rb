a,b = gets.split.map(&:to_i)

sum = 0
t = 999.times.map { |i| sum += i+1 }
p t[b-a-1]-b
