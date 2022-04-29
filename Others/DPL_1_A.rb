N,M = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

# M種類のコインでN円を払う
dp = Array.new(M+1) { Array.new(N+1) { 50000 } }

M.times do |i|
  (N+1).times do |j|
    cand = [] # 最小枚数の候補
    # C[i]円硬貨を選ぶ場合
    if C[i] <= j
      cand << j / C[i] if j % C[i] == 0 # C[i]円硬貨のみで払う場合

      cand << dp[i+1][j - C[i]] + 1 # C[i]円硬貨重複で払う場合

      # C[i-1]円玉とC[i]円玉で払う場合
      # C[i-1]円玉でj - C[i]円払った時の枚数にC[i]円玉の1枚を足した枚数
      cand << dp[i][j - C[i]] + 1
    end

    # C[i]円硬貨を選ばない場合
    cand << dp[i][j]

    # 候補の中で最も小さい枚数で確定する
    dp[i+1][j] = cand.min
  end
end

# N円払う方法のうち最も小さい枚数が答え
puts dp.transpose[N].min