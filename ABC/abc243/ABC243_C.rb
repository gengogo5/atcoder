N = gets.to_i
X,Y = N.times.map { gets.split.map(&:to_i) }.transpose
S = gets.chomp

h = Hash.new { |h, k| h[k] = [0,Float::INFINITY] }
N.times do |i|
  if S[i] == 'L'
    h[Y[i]][0] = [h[Y[i]][0],X[i]].max
  else
    h[Y[i]][1] = [h[Y[i]][1],X[i]].min
  end
end

cause = false
h.each do |k,v|
  cause = true if v[0] > v[1]
end

if cause
  puts 'Yes'
else
  puts 'No'
end