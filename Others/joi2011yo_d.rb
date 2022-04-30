# https://atcoder.jp/contests/joi2011yo/tasks/joi2011yo_d
N = gets.to_i
A = gets.split.map(&:to_i)

# N-1項までの数を使ってMの数を作るパターン数
dp = Array.new(N+1) { Array.new(21) {0} }

# 1項めを使ってAの1項目を作るパターンは当然1つ
dp[1][A[0]] = 1

# 2項めからN-1項めまでをループ
(1..(N-1)).each do |i|
  # 0〜20までをループ
  21.times do |j|
    pls = j + A[i] # i項目とjを足した数
    mns = j - A[i] # jからi項目を引いた数

    # プラスを使う場合
    if pls <= 20 && pls >= 0
      # i-1項の計算結果がjになるパターンの数を足す
      # i-1項で作られないものはdp[i][j]が0なので加算されない
      dp[i+1][pls] += dp[i][j] 
    end
    # マイナスの場合
    if mns >= 0 && mns <= 20
      # i-1項の計算結果がjになるパターンの数を足す
      dp[i+1][mns] += dp[i][j] 
    end
  end
end

# 動作確認用
#21.times { |i| printf("%3d",i) }
#puts ""
#dp.each do |line|
#  line.each do |n|
#    printf("%3d", n)
#  end
#  puts ""
#end

puts dp[N-1][A[-1]]