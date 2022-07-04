N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

# P個以上のプロジェクトを作れるかどうか Pで二分探索
ok = 0
ng = (10 ** 18) + 1 # NGは常に範囲外 (A[i]の最大*Kの最大を超える数字)

while (ng - ok > 1)
  md = (ok + ng) / 2
  sum = 0
  A.each do |a|
    # 部署の社員数とPの小さい方を、全部署分合計する
    sum += [a,md].min
  end
  # P個以上のプロジェクトを作るにはP×Kが合計以下である必要がある
  if (sum >= K * md)
    # md個のPJが作れる場合
    ok = md
  else
    # md個のPJが作れない
    ng = md
  end
end
puts ok