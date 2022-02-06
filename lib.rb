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

# tgt以上の値が最初に見つかるインデックスを返す
# Array#bsearch_indexを車輪の再発明
def lower_bound(array, key)
  ng = -1 # 常に条件を満たさない(0が条件を満たす場合があるので-1)
  ok = array.size # 常に条件を満たす
  while (ok - ng > 1) # OK/NG領域が定まったら終了
    mid = (ok + ng) / 2
    if array[mid] >= key
      ok = mid
    else
      ng = mid
    end
  end
  ok
end