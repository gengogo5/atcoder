N = gets.to_i
H = gets.split.map(&:to_i)

min = H[0]
isFail = false
(1...N).each do |i|
  if (min - H[i]) > 1
    isFail = true
    break
  end
  min = H[i] if min < H[i]
end

if isFail
  puts 'No'
else
  puts 'Yes'
end
