S = gets.chomp
T = gets.chomp

match = false
(0..26).each do |i|
  s = S.chars.map do |c|
    if c.ord + i <= 122
      (c.ord + i).chr
    else
      ('a'.ord + (i - ('z'.ord - c.ord)) - 1).chr
    end
  end.join
  match = true if s == T
end

puts match ? 'Yes' : 'No'