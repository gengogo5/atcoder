def _min(a,b); a < b ? a : b; end
N = gets.to_i
# 金額の多い順に扱う
A,B,C = gets.split.map(&:to_i).sort.reverse

# 最大枚数+1を仮の答えとして持つ
b = ans = 10000
while b >= 0
  # bで使ってる分の枚数は除いてスタートする
  # また、b枚のB円玉で賄った目標金額の残りをAで割った数よりは少ない
  a = _min(ans - b, (N - b * B) / A)
  while a >= 0
    # cの枚数はA円玉とB円玉で賄った目標金額の残りを払える分が上限
    # modが0でない場合はちょうど目標金額にはならない
    c, m = (N - A * a - B * b).divmod(C)
    if m.zero?
      # ちょうどN円になる場合
      # 現時点の最小枚数より少なくN円にできるならansを更新
      # 最小枚数より多いループを回す必要はないので、外側のループカウンタを更新する
      if a + b + c < ans
        ans = a + b + c 
        b = ans if ans < b
      end
      # A > C なので、これ以上ループを回してaの枚数を減らしても、ansより少ない枚数の組み合わせは出ない
      break
    elsif a + b + c + 1 >= ans
      # 3種類合わせて最小枚数より多い場合はaのループを抜ける
      # A > C なので、これ以上ループを回してaの枚数を減らしても、ansより少ない枚数の組み合わせは出ない
      break
    end
    a -= 1
  end
  b -= 1
end
puts ans