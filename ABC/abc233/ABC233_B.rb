L,R = gets.split.map(&:to_i)
S = gets.chomp

S[(L-1)..(R-1)] = S[(L-1)..(R-1)].reverse
puts S