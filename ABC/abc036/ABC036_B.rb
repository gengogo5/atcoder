N = gets.to_i
s = N.times.map { gets.chomp.chars }.transpose

s.each do |ary|
  puts ary.reverse.join
end
