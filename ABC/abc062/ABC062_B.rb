H,W = gets.split.map(&:to_i)
A = H.times.map { gets.chomp }
puts '#' * W + '##'
A.each { |a| puts "##{a}#" }
puts '#' * W + '##'
