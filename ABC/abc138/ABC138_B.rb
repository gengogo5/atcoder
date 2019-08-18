N = gets.to_i
A = gets.split.map(&:to_i)

ai = 0.0
A.each do |a|
  ai += 1.0/a
end
puts 1.0/ai
