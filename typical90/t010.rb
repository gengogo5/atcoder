def array(n,ini=nil);      Array.new(n) { ini } end
N = gets.to_i
C,P = N.times.map { gets.split.map(&:to_i) }.transpose
Q = gets.to_i
L,R = Q.times.map { gets.split.map(&:to_i) }.transpose

# クラス別の累積和を持つ配列
# 先頭は0を入れるのでインデックスが他配列と違い+1
s1 = array(N+1,0)
s2 = array(N+1,0)
s1[0] = 0
s2[0] = 0

N.times do |i|
  if C[i] == 1
    s1[i+1] = s1[i] + P[i] # 生徒がいれば前の累積和に点数を追加して加算
    s2[i+1] = s2[i] # 生徒がいない場合は前の累積和を引き継ぐ
  else
    s2[i+1] = s2[i] + P[i] # 生徒がいれば前の累積和に点数を追加して加算
    s1[i+1] = s1[i] # 生徒がいない場合は前の累積和を引き継ぐ
  end
end

Q.times do |i|
  # L[i]からR[i]の合計は、累積和Riから累積和Li-1を引く
  puts "#{s1[R[i]] - s1[L[i]-1]} #{s2[R[i]] - s2[L[i]-1]}"
end