s = gets.chomp

# Sの先頭からaの数を数える
cnt_p = 0
s.length.times do |i|
  if s[i] == 'a'
    cnt_p += 1
  else
    break
  end
end

cnt_s = 0
s.length.downto(1) do |i|
  if s[i-1] == 'a'
    cnt_s += 1
  else
    break
  end
end

if cnt_p <= cnt_s
  s.reverse!
  s << 'a' * (cnt_s - cnt_p)
  si = s.reverse
  if si == s
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
