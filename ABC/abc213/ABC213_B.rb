N = gets.to_i
A = gets.split.map.with_index { |a,i| [i, a.to_i]}

# 降順に並べる
A.sort! { |a,b| b[1] <=> a[1] }

puts A[1][0] + 1

