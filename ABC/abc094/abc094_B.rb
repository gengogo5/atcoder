N,M,X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

x = A.find_all{|item| item < X}.length
puts [x, M - x].min
