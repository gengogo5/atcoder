N,Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

ans = []
Q.times do |i|
  x = gets.to_i
  s = A.bsearch_index { |y| y >= x }
  if s.nil?
    ans << 0
  else
    ans << N-s
  end
end

ans.each do |a|
  puts a
end