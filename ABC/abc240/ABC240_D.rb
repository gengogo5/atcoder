N = gets.to_i
a = gets.split.map(&:to_i)

st = []

N.times do |i|
  if i == 0 || st.size == 0
    st << [a[i],1]
  else
    # 連続した場合
    if a[i] == st[-1][0] && a[i]
      # 先頭要素に書かれた連続個数+1とともにpush
      st << [a[i], st[-1][1] + 1]
      # kが書かれたボールがk個連続したら
      if a[i] == st[-1][1]
        # 個数分取り出す
        (st[-1][1]).times do
          st.pop
        end
      end
    else
      st << [a[i], 1]
    end
  end
  puts st.size
end
