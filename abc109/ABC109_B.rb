N = gets.to_i
W = N.times.map { gets.chomp }

h = {}
last = ''
heswrong = false
W.each do |w|
  if (!last.empty? && w[0] != last) || h.has_key?(w)
    heswrong = true
    break
  end
  last = w[-1]
  h[w] = 1
end

if heswrong
  puts 'No'
else
  puts 'Yes'
end
