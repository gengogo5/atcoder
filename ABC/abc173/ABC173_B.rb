N = gets.to_i
h = Hash.new(0)

N.times do
  s = gets.chomp
  h[s] += 1
end

puts "AC x #{h["AC"]}"
puts "WA x #{h['WA']}"
puts "TLE x #{h['TLE']}"
puts "RE x #{h['RE']}"
