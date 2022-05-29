N = gets.to_i
S = N.times.map { gets.chomp.chars }

# 縦と横の判定
def f1
  N.times do |i|
    (N-5).times do |j|
      cnt_x = 0
      cnt_y = 0
      6.times do |k|
        cnt_x += 1 if S[i][j+k] == '#'
        cnt_y += 1 if S[j+k][i] == '#'
      end
      return true if cnt_x >= 4 || cnt_y >= 4
    end
  end
  false
end

# 斜めの判定, 左上座標でループ
def f2
  (N-5).times do |i|
    (N-5).times do |j|
      cnt1 = 0
      cnt2 = 0
      6.times do |k|
        # 対角線ごとに2つ
        cnt1 += 1 if S[i+k][j+k] == '#'
        cnt2 += 1 if S[i+5-k][j+k] == '#'
      end
      return true if cnt1 >= 4 || cnt2 >= 4
    end
  end
  false
end

puts f1 || f2 ? 'Yes' : 'No'