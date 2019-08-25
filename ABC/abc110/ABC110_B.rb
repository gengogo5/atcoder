N,M,X,Y = gets.split.map(&:to_i)
max_x = gets.split.map(&:to_i).max
min_y = gets.split.map(&:to_i).min
war = true
(-100..100).each do |z|
  if (X < z && z <= Y) && max_x < z && min_y >= z
    war = false
  end
end

puts war ? 'War' : 'No War'
