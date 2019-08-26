N = gets.to_i
max_n = 1
max_cnt = 0
(1..N).each do |n|
  cnt = 0
  tmp = n
  while tmp%2==0 do
    tmp/=2
    cnt += 1
  end
  if cnt > max_cnt
    max_n = n
    max_cnt = cnt
  end
end
p max_n
