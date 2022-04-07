N = gets.to_i
M = N.times.map { gets.chomp.split }

M.sort! { |a,b| b[1].to_i <=> a[1].to_i }

puts M[1][0]