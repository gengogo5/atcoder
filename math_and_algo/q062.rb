N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

now = 1 # 今いる町のインデックス
cnt = 0 # テレポート回数
hist_1 = Array.new(200009) {-1}
hist_2 = Array.new(200009) {-1}

loop do
  # 初回訪問の場合
  if(hist_1[now] == -1)
    hist_1[now] = cnt # 今の場所には何回目のテレポートで来たか
  # 2回目訪問の場合
  elsif(hist_2[now] == -1)
    hist_2[now] = cnt # 今の場所には何回目のテレポートで来たか
  end

  # K回目までテレポートしたら現在地を回答
  if (cnt == K)
    puts now
    break
  elsif (hist_2[now] != -1 && ((K - hist_1[now]) % (hist_2[now]-hist_1[now]) == 0))
    puts now
    break
  end
  now = A[now-1] # ここでテレポート
  cnt += 1 # テレポート回数をカウントアップ
end

# 移動履歴を転送回数で割った余りと、移動履歴をマッピングして答えを出す
