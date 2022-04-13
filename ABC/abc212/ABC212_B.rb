X = gets.chomp.chars

if X.uniq.size == 1
  puts 'Weak'
else
  weak = true
  1.upto(3) do |i|
    weak = false if X[i].to_i != ((X[i-1].to_i + 1) % 10)
  end
  if weak
    puts 'Weak'
  else
    puts 'Strong'
  end
end