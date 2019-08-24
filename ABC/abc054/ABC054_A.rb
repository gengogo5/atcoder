A,B = gets.split.map(&:to_i)
P = [2,3,4,5,6,7,8,9,10,11,12,13,1]
if P.index(A) > P.index(B)
  puts 'Alice'
elsif P.index(A) < P.index(B)
  puts 'Bob'
else
  puts 'Draw'
end
