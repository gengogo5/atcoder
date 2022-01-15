require 'prime'
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
def pr?(num);              Prime.prime?(num) end

N,Q = gis
A = gis
X,K = gismt(Q)

ah = Hash.new { |h,k| h[k] = {} }
cnth = Hash.new(0)
N.times do |i|
  cnth[A[i]] += 1 # 何回出てきたかを格納
  ah[A[i]][cnth[A[i]]] = i # その数字がcnt回目に登場した時の添字を保存
end

Q.times do |j|
  if ah[X[j]][K[j]].nil?
    puts -1
  else
    puts ah[X[j]][K[j]] + 1
  end
end

