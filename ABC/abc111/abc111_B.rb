N = gets.to_i

if N%111 == 0
  puts N/111 * 111
else
  puts ((N/111)+1) * 111
end
