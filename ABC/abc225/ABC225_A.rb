S = gets.chomp

p S.chars.permutation(3).to_a.uniq.size
