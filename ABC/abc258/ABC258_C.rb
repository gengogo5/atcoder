N,Q = gets.split.map(&:to_i)
S = gets.chomp

offset = 0

ans = []
Q.times do |i|
  q,x = gets.split.map(&:to_i)
  if q == 1
    offset = (offset + x) % N
  else
    ans << S[x-offset-1]
  end
end

ans.each do |a|
  puts a
end