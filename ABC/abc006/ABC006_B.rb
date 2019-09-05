n = gets.to_i
t =[0,0,1]

(2..(n-1)).each do |i|
  t << (t[i-2] + t[i-1] + t[i])%10007
end

p t[n-1]
