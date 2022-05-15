N,M,Q = gets.split.map(&:to_i)
cnt = Array.new(N+1) { Array.new(N+1,0) }
# cnt[l][r]: 始点l,終点rである電車の本数
M.times do
  l,r = gets.split.map(&:to_i)
  cnt[l][r] += 1
end
# csum[i][j]: i駅が始点かつ、j駅が終点の電車の本数の累積和
csum = []
cnt.each do |lt|
  inner = []
  lt.each.with_index do |it,idx|
    if idx == 0
      inner[0] = it
    else
      inner[idx] = inner[idx-1] + it
    end
  end
  csum << inner
end
anss = []
Q.times do
  l,r = gets.split.map(&:to_i)
  ans = 0
  # l駅からr駅まで駅ごとにループ
  csum[l..r].each do |c|
    # l駅からr駅の範囲で、各駅始発で範囲内に終点のある本数を累積和から求める
    ans += (c[r] - c[l-1])
  end
  anss << ans
end

anss.each { |a| puts a }