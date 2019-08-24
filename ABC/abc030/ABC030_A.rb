A,B,C,D = gets.split.map(&:to_i)
ra = B/A.to_f
rb = D/C.to_f

if ra == rb
  puts 'DRAW'
elsif ra > rb
  puts 'TAKAHASHI'
else
  puts 'AOKI'
end
