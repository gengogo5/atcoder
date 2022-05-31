# TLE
Q = gets.to_i
query = Q.times.map { gets.split.map(&:to_i) }

# クエリを先読みして追加要素を整列する
# 昇順にして重複除去(座標圧縮)
values = query.select { |q| q[0] == 1 }.map { |q| q[1] }.sort.uniq
# 追加数を管理する配列
ft = Array.new(values.size,0)
v_at = {}
values.each.with_index do |v,i|
  v_at[v] = i
end

pts = []
query.each do |(q,x,k)|
  case q
  when 1 then
    ft[v_at[x]] += 1
  when 2 then
    # x以上で最も小さい要素のインデックス
    # nilが返ったら末尾から調べさせる
    idx = values.bsearch_index { |v| v > x } || ft.size
    idx -= 1 
    while true
      # K個分左に行けない場合(idx=-1は末尾を見てしまう)
      pts << -1 and break if idx < 0 && k > 0
      k -= ft[idx]
      pts << values[idx] and break if k <= 0
      idx -= 1 # インデックスを左にずらす
    end
  when 3 then
    idx = values.bsearch_index { |v| v >= x }
    pts << -1 and next if idx.nil? # x以上の要素がない場合は-1
    while true
      pts << -1 and break if (idx > ft.size-1 && k > 0)
      k -= ft[idx] # x以上の要素数
      pts << values[idx] and break if k <= 0 # k個目がある
      idx += 1
    end
  else
  end
end

pts.each do |it|
  puts it
end