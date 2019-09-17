X = gets.chomp

cx = false
X.chars do |x|
  if cx # 1文字前がcの場合
    if x != 'h'
      puts 'NO'
      exit
    else
      cx = false
    end
  elsif x.match(/[c]/) # cが来たらcフラグを立てる
    cx = true
  elsif x.match(/[^oku]/) # o,k,uに一致しなかったらアウト
    puts 'NO'
    exit
  end
end

if cx # 最後の文字がcの場合
  puts 'NO'
else
  puts 'YES'
end
