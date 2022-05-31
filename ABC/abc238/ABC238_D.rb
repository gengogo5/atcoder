T = gets.to_i

ans = []
T.times do
  a,s = gets.split.map(&:to_i)
  xor = s - 2 * a
  if xor >= 0 && xor & a == 0
    ans << 'Yes'
  else
    ans << 'No'
  end
end

ans.each do |a|
  puts a
end