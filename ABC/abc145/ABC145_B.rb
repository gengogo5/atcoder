N = gets.to_i
S = gets.chomp

if N%2 != 0
  puts 'No'
else
  cent = (N/2)
  a = S[0...cent]
  b = S[cent..-1]
  if a == b
    puts 'Yes'
  else
    puts 'No'
  end
end
