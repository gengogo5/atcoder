N,T = gets.split.map(&:to_i)
t = 0
la = -T # 前回人が通った時刻
N.times do |i|
  a = gets.to_i
  t += T # 人が通ったら開いた時間分を加算

  if (la..(la+T)).include? a # ドアが空いたままだったら、ロスタイムを減算
    t -= T-(a-la)
  end
  la = a
end
p t
