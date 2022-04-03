N = gets.to_i
H,S = N.times.map { gets.split.map(&:to_i) }.transpose

INF = 1 << 60

left = -1 # 常に条件を満たさない
right = INF # 常に条件を満たす
# 2分探索
# 高度xを2分探索する
while(right - left > 1)
  mid = (left + right)/2

  ok = true
  t = Array.new(N) # 各風船を割るまでの制限時間
  # 各風船ごとのループ
  N.times do |i|
    if mid < H[i] # midが初期の高さより低いとNG
      ok = false
      break
    else
      t[i] = (mid - H[i]) / S[i] # デッドラインとの差が何分で埋まるか
    end
  end

  unless ok
    left = mid
    next
  end

  # 制限時間が短い順にソート
  t.sort!

  N.times do |i|
    if t[i] < i
      ok = false
      break
    end
  end

  unless ok
    left = mid
    next
  end
  right = mid
end

puts right