N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

dpA = Array.new(N) {false} # X1 を A1にできるか
dpB = Array.new(N) {false} # X1 を B1にできるか

dpA[0] = true # 最初はどちらも選べる
dpB[0] = true # 最初はどちらも選べる

1.upto(N-1) do |i|
  if dpA[i-1] && (A[i-1] - A[i]).abs <= K
    # ひとつ前でAを選んだ場合
    dpA[i] = true
  elsif dpB[i-1] && (B[i-1] - A[i]).abs <= K 
    # ひとつ前でBを選んだ場合
    dpA[i] = true
  else
    dpA[i] = false
  end

  if dpA[i-1] && (A[i-1] - B[i]).abs <= K
    # ひとつ前でAを選んだ場合
    dpB[i] = true
  elsif dpB[i-1] && (B[i-1] - B[i]).abs <= K 
    # ひとつ前でBを選んだ場合
    dpB[i] = true
  else
    dpB[i] = false
  end
end

puts dpA[N-1] || dpB[N-1] ? 'Yes' : 'No'