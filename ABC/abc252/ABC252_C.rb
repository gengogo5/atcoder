N = gets.to_i
S = N.times.map { gets.chomp }

# どれを揃えるかで全探索する
min_t = 999999
(0..9).each do |i| # どれを揃えるか
  t_h = Hash.new(0)
  S.each do |s| # 各リール
    # このリールでiを揃えるには何秒かかるか
    t = s.index(i.to_s)
    t_h[t] += 1 # かかる秒ごとにハッシュ化
  end
  mx_t = 0 # 最大の秒数
  t_h.each do |(k,v)|
    # 重複している場合は10秒追加
    if v > 1
      tm = k + (v-1) * 10
      mx_t = tm if tm > mx_t
    else
      mx_t = k if k > mx_t
    end
  end
  min_t = mx_t if mx_t < min_t
end

puts min_t