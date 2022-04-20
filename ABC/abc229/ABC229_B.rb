A,B = gets.chomp.split

al = A.length
bl = B.length
hard = false
[al,bl].min.times do |i|
  hard = true if A[-1-i].to_i + B[-1-i].to_i >= 10
end

if hard
  puts 'Hard'
else
  puts 'Easy'
end