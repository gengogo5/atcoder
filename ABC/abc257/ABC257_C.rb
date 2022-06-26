N = gets.to_i
S = gets.chomp
W = gets.split.map(&:to_i)

wu = W.uniq.sort
# すべてが子供or大人の時用の処理
minw,maxw = wu.minmax
wu.unshift(minw-1)
wu << maxw + 1

adl = []
cld = []
N.times do |i|
  if S[i] == '0'
    cld << W[i]
  else
    adl << W[i]
  end
end
adl.sort!
cld.sort!

adl_n = adl.size
cld_n = cld.size

mx = 0
wu.each do |w|
  cn = cld.bsearch_index { |x| x >= w }
  an = adl.bsearch_index { |x| x >= w }

  # wをXにした時のX未満の子供の人数
  cnum = cn.nil? ? cld_n : cn
  # wをXにした時のX以上の大人の人数
  anum = an.nil? ? 0 : adl_n - an
  mx = cnum+anum if cnum+anum > mx
end

puts mx