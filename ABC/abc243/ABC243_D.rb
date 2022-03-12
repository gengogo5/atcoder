N,X = gets.split.map(&:to_i)
S = gets.chomp

min_s = S[0]
# Uを圧縮する
1.upto(N-1).each do |i|
  if min_s.length == 0
    min_s << S[i]
  elsif S[i] == 'U' && min_s[-1] != 'U'
    min_s.chop!
  else
    min_s << S[i]
  end
end

now = X
min_s.chars.each do |s|
  case s
  when 'U' then
    now /= 2
  when 'R' then
    now = (now * 2) + 1
  when 'L' then
    now = (now * 2)
  end
end

puts now
