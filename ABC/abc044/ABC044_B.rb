w = gets.chomp
wh = Hash.new(0)
w.chars do |c|
  wh[c] += 1
end
puts wh.values.each.all? { |v| v.even? } ? 'Yes' : 'No'
