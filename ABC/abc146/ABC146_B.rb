N = gets.to_i
S = gets.chomp

chs = S.chars.map do |c|
  aft_n = c.ord + N
  aft_n -= ('Z'.ord - 'A'.ord + 1) if aft_n > 'Z'.ord
  aft_n.chr
end

puts chs.join