N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
que = [0,0,0,0]
A.each do |a|
  que[0] += 1

  add = [0,0,0,0]

  if a >= 4
    ans += que[0]
  else
    add[a] = que[0]
  end

  if 1+a >= 4
    ans += que[1]
  else
    add[1+a] = que[1]
  end

  if 2+a >= 4
    ans += que[2]
  else
    add[2+a] = que[2]
  end

  if 3+a >= 4
    ans += que[3]
  else
    add[3+a] = que[3]
  end

  que = [add[0],add[1],add[2],add[3]]
end

puts ans