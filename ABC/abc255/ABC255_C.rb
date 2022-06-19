X,A,D,N = gets.split.map(&:to_i)

@x = X
@n = N
# 公差が負数の場合の正規化
@d = D.abs
@a = D < 0 ? A + D * (N-1) : A

st = @a
fi = @a + (@n-1) * @d

ans = 0
if st <= @x && @x <= fi
  # XがSの範囲内の場合
  if @d == 0
    # 公差0ならXは良い数なので0
    ans = 0
  else
    # 公差0でない場合
    # stもしくは2項目で近い方との距離
    ans = [(@x - @a) % @d, @d - (@x - @a) % @d].min
  end
elsif @x < st
  # Xが初項より小さい場合は初項との差が答え
  ans = st - @x
else
  # Xが最終項より大きい場合は最終項との差が答え
  ans = @x - fi
end

puts ans