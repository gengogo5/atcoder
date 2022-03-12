V,A,B,C = gets.split.map(&:to_i)

v = V

loop do 
  if (v - A) >= 0
    v -= A
  else
    puts 'F'
    break
  end
  if v - B >= 0
    v -= B
  else
    puts 'M'
    break
  end
  if v - C >= 0
    v -= C
  else
    puts 'T'
    break
  end
end

