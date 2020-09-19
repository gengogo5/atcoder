N = gets.to_i
z = 0
zx = false
N.times do |n|
  d1,d2 = gets.split.map(&:to_i)
  if d1 == d2
    z += 1
  else
    z = 0
  end
  zx = true if z == 3
end

puts zx ? 'Yes' : 'No'
