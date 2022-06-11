def gi;                    gets.to_i end
def gf;                    gets.to_f end
def gs;                    gets.chomp end
def gis;                   gets.split.map(&:to_i) end
def gfs;                   gets.split.map(&:to_f) end
def gss;                   gets.chomp.split.map(&:to_s) end
def gcs;                   gets.chomp.split('') end
def gism(n);               n.times.map { gets.split.map(&:to_i) } end
def gismt(n);              n.times.map { gets.split.map(&:to_i) }.transpose end
def array(n,ini=nil);      Array.new(n) { ini } end
def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end

# N*Mの二次元配列の外側をfillで埋める
# fillは参照型ではない
def enclose(darray, fill)
  new_one = darray.map(&:dup)
  m = darray[0].length
  new_one.unshift(Array.new(m) {fill}) # 上
  new_one.push(Array.new(m) {fill}) # 下
  new_one.each { |a| a.push(fill).unshift(fill) } # 左右
  new_one
end

# 累積和の配列を返す(先頭要素は0)
def cumulative_sum(org)
  s = Array.new(org.size+1)
  s[0] = 0
  org.size.times do |i|
    s[i+1] = s[i] + org[i]
  end
  s
end