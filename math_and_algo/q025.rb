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

N = gi;
A = gis;
B = gis;

sum = 0.0
N.times do |i|
  sum += (2.0 / 6 * A[i]) + (4.0 / 6 * B[i])
end

puts sum
