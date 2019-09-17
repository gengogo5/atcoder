s = gets.chomp

cnt = 0
al = ''
ans = []
s.chars do |c|
  # 前の文字と異なる場合
  if al != c
    ans << al + cnt.to_s # 前の文字を出力用配列に入れる
    cnt = 1 # 文字数リセット
    al = c # 連続文字を記録
  else
    cnt += 1
  end
end
ans << al + cnt.to_s

puts ans[1..-1].join # 先頭は除外
