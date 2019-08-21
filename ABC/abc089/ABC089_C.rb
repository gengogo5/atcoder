N = gets.to_i
S = Hash.new(0)
# 先頭文字をカウント
N.times { S[gets.chomp[0]] += 1 }

cnt = 0
# M,A,R,C,Hから３つを重複なしで配列化
"MARCH".chars.combination(3).to_a.each do |p|
  #重複なしパターンでそれぞれ3人の組合せを出す
  cnt += S[p[0]]*S[p[1]]*S[p[2]]
end
puts cnt
