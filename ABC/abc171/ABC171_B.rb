N,K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i).sort

puts P.slice(0,K).sum
