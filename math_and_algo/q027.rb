N = gets.to_i
A = gets.split.map(&:to_i)

def merge_sort(target)
  # 配列サイズが1の場合はソート済なのでそのまま返す
  len = target.length
  return target if (len == 1)

  # 配列を2つに分割して、それぞれをマージソートする
  m = len / 2
  sorted_l = merge_sort(target[0,m])
  sorted_r = merge_sort(target[m..-1])

  # ソートした要素を入れていく返却用の配列
  sorted = []

  # sortedの要素数がtargetの要素数と同じになるまで繰り返す
  while (sorted.size < len) do
    if sorted_l.empty?
      # 配列lが空の場合
      # 配列rを後ろに加えればOK
      sorted.concat(sorted_r)
    elsif sorted_r.empty?
      # 配列rが空の場合
      # 配列lを後ろに加えればOK
      sorted.concat(sorted_l)
    else
      # その他の場合、比較がんばる
      if sorted_l[0] >= sorted_r[0]
        # rの先頭を返却用配列に移す
        sorted << sorted_r.shift
      else  
        # lの先頭を返却用配列に移す
        sorted << sorted_l.shift
      end
    end
  end
  sorted
end

puts merge_sort(A).join(" ")
