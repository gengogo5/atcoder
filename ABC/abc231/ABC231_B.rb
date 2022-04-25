N = gets.to_i
S = N.times.map { gets.chomp }

h = Hash.new(0)
S.each do |s|
  h[s] += 1
end

puts h.sort_by { |_, v| -v }[0][0]