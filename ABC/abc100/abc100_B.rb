D,N = gets.split.map(&:to_i)

if D == 0
  if N!=100
    puts N
  else
    puts 101
  end
elsif D == 1
  if N!=100
    puts N*100
  else
    puts 10100
  end
else
  if N!=100
    puts N*10000
  else
    puts 1010000
  end
end


