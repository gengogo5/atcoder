N = gets.to_i
s,t = N.times.map { gets.chomp.split(" ") }.transpose

ok = true
N.times do |i|
  if (s.count(s[i]) == 1 && (t.count(s[i]) == 0 || (t.count(s[i]) == 1 && s[i] == t[i])) ) || (t.count(t[i]) == 1 && (s.count(t[i]) == 0 || (s.count(t[i]) == 1 && t[i] == s[i])))
    ok = true
  else
    ok = false
    break
  end
end
puts ok ? 'Yes' : 'No'