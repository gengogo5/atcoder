X,Y = gets.split.map(&:to_i)

found = false
(0..X).each do |t|
  legs = t * 2 + (X-t) * 4
  found = true if legs == Y
end

puts found ? 'Yes' : 'No'