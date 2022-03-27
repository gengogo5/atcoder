N = gets.chomp.chars.inject(0) { |sum,i| sum + i.to_i }
puts N % 9 == 0 ? 'Yes' : 'No'