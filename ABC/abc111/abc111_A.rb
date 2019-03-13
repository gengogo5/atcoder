n = gets.chomp

n.gsub!('1','5')
n.gsub!('9','1')
n.gsub!('5','9')

puts n.to_i
