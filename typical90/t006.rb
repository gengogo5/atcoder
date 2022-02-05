# 辞書順最小
def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end
N,K = gets.split.map(&:to_i)
S = gets.chomp

# 最左にある辞書順最小の文字のインデックスを持つデータ
ci = darray(26, N)
OFFSET = 'a'.ord
# 後ろから一文字ずつ見ることで累積する
(N-1).downto(0).each do |i|
  # 全文字分見る
  26.times do |j|
    # 探索対象文字の場合は、発見したインデックス番号を記録
    if S[i].ord - 'a'.ord == j
      ci[j][i] = i
    else
      if i == N-1
        ci[j][i] = nil
      else
        # 探索対象文字でない場合は、1文字前の時のインデックス番号をスライド
        ci[j][i] = ci[j][i+1]
      end
    end
  end
end

ans = [] # K文字の答え
here = 0 # S中の探索地点
K.times do |i|
  # 貪欲法でaから順番に探す
  26.times do |j|
    nxt_pos = ci[j][here] # 探索地点から見て左端にある文字jの場所
    next if nxt_pos.nil? # 文字がS中になければ次へ
    next if N - nxt_pos + ans.size < K # 採用してもK文字作れない場所なら次へ
    ans << (j+OFFSET).chr
    here = nxt_pos + 1
    break
  end
end

puts ans.join