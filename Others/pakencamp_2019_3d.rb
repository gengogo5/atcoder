# https://atcoder.jp/contests/pakencamp-2019-day3/tasks/pakencamp_2019_day3_d
N = gets.to_i
S = 5.times.map { gets.chomp.chars }

# 0はダミーのつもり
dp = Array.new(N+1) { Array.new(4, Float::INFINITY) }
dp[0][0] = 0

# N列
N.times do |i|
  cl = Array.new(4, 0) # 3色の数を保持
  5.times do |j|
    case S[j][i]
    when 'R' then cl[1] += 1
    when 'B' then cl[2] += 1
    when 'W' then cl[3] += 1
    end
  end
  4.times do |j| # 前の列の色(0はダミー)
    (1..3).each do |k| # 今の列の色
      next if j == k # 同色には塗れない
      # 色を塗る
      dp[i+1][k] = dp[i][j] + (5 - cl[k]) if dp[i+1][k] > dp[i][j] + (5 - cl[k])
    end
  end
end

# デバッグ用
#dp.each do |line|
#  puts line.join(" ")
#end

puts dp[N].min