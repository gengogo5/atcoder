N,P = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts a.filter { |score| score < P }.size