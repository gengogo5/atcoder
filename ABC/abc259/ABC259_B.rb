a,b,d = gets.split.map(&:to_i)

c = (360 - d) * Math::PI / 180
xd = a * Math.cos(c) + b * Math.sin(c)
yd = -a * Math.sin(c) + b * Math.cos(c)

puts "#{xd} #{yd}"