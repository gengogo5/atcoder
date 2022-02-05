N = gets.to_i
A = gets.split.map(&:to_i).sort # 事前ソート
Q = gets.to_i
B = Q.times.map { gets.to_i }

# 生徒ごとに判定
B.each do |std|
  diff1 = 20000000
  diff2 = 20000000
  # レーティングが自分より高いクラスのうち最も小さいクラスのインデックス
  idx = A.bsearch_index { |x| x >= std }
  if idx == 0
    # ひとつ下のクラスが無い場合(N=1の場合も含む)
    puts (A[idx] - std).abs
  elsif idx.nil?
    # レーティングが自分より高いクラスが無い場合
    # レーティングが低い中で最も高いクラスを選ぶ
    puts (std - A[-1]).abs
  else
    # ひとつ下のクラスがある場合
    puts [(A[idx] - std).abs,(A[idx-1] - std).abs].min
  end
end
