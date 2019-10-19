N = gets.to_i
d = gets.split.map(&:to_i)

sum = 0
d.combination(2).to_a.each do |dc|
  sum += dc[0] * dc[1]
end

p sum
