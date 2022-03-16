a,b,c = gets.split.map(&:to_i)

if a != b && b != c && c != a
  puts 0
else
  if a == b
    puts c
  elsif b == c
    puts a
  elsif a == c
    puts b
  end
end
