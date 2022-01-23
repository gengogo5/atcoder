N = gets.to_i
A = gets.split.map(&:to_i)

h = Hash.new(0)

A.each do |i|
  h[i] += 1
end

h.each do |k,v|
  if v == 3
    puts k
    break
  end
end
