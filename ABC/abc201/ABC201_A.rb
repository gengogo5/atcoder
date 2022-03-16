A = gets.split.map(&:to_i).sort

if A[2]-A[1] == A[1]-A[0]
  puts "Yes"
else
  puts "No"
end
