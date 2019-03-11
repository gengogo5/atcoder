N = gets.to_i
p = N.times.map { gets.to_i }

sum = 0

p.sort!
sum += p[-1]/2
p.delete_at(-1)

sum += p.inject(:+)

puts sum
