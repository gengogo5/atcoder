C = gets.chomp.chars

puts C.uniq.length == 1 ? "Won" : "Lost"
