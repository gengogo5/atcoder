N = gets.to_i
puts (1..N).inject(1) { |i,j| (i*j)%1000000007 }
