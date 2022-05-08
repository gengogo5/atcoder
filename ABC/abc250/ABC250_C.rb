N,Q = gets.split.map(&:to_i)
# 1オリジン
at = (0..N).to_a
ary = (1..N).to_a

Q.times do |i|
  x = gets.to_i

  # xの場所を調べる
  atx = at[x]
  if atx == N
    y = ary[N-2]
    ary[N-1],ary[N-2] = ary[N-2],ary[N-1]
    at[x] = atx-1
    at[y] = atx
  else
    y = ary[atx] # +1
    ary[atx-1], ary[atx] = ary[atx], ary[atx-1]
    at[x] = atx+1
    at[y] = atx
  end
end
puts ary.join(" ")
