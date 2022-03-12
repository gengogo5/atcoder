A,B = gets.chomp.split

puts [A.chars.map(&:to_i).sum,B.chars.map(&:to_i).sum].max
