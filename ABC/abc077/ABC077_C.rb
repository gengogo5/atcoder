N = gets.to_i
A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i).sort

# 中段から全探索して探していく
cnt = 0
B.each do |b|
  # Bの値以上の中で最も小さいインデックス
  aidx = A.bsearch_index { |x| x >= b }
  # Bの値を超える中で最も小さいインデックス
  cidx = C.bsearch_index { |x| x > b }
  # B以上の値がない場合はAの全て対象
  asize = aidx.nil? ? A.size : A[0...aidx].size
  # Bを超える値がない場合はC部品を使えない
  csize = cidx.nil? ? 0 : C[cidx..-1].size
  cnt += asize * csize
end
puts cnt