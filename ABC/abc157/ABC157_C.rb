N,M = gets.split.map(&:to_i)
s,c = M.times.map { gets.split.map(&:to_i) }.transpose

(0..999).each do |n|
  next if n.to_s.length != N
  isnt = false
  M.times do |i|
    if n.to_s[s[i]-1] != c[i].to_s
      isnt = true
      break
    end
  end
  unless isnt
    puts n
    exit
  end
end
puts -1
