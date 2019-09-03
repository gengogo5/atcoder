S = gets.chomp
h = Hash.new(0)
'ABCDEF'.chars { |c| h[c] = 0 }

S.chars do |c|
  h[c] += 1
end

puts h.values.join(' ')
