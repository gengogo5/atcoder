S = gets.chomp

s = ""
(1..6).each do |i|
  s = S*i
  break if s.length == 6
end

puts s