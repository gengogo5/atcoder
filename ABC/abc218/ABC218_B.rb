P = gets.split.map(&:to_i)
a2z = ('a'..'z').to_a

puts P.map { |i| a2z[i-1] }.join