N = gets.to_i

mx = 2*N+1
ended = false
used = Array.new(mx) {false}

while (!ended)
  # 高橋くんのターン
  idx = used.index(false)
  puts idx + 1
  STDOUT.flush
  used[idx] = true

  # 青木くんのターン
  n = gets.to_i
  break if n == 0
  used[n-1] = true
  ended = true if used.index(false).nil?
end