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

a,b,c = gcs

puts (a+b+c).to_i+(b+c+a).to_i+(c+a+b).to_i
