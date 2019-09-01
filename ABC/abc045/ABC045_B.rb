Sa = gets.chomp.chars.reverse
Sb = gets.chomp.chars.reverse
Sc = gets.chomp.chars.reverse

card = 'a'
loop do
  case card
  when 'a'
    if Sa.size == 0
      puts 'A'
      exit
    end
    card = Sa.pop
  when 'b'
    if Sb.size == 0
      puts 'B'
      exit
    end
    card = Sb.pop
  when 'c'
    if Sc.size == 0
      puts 'C'
      exit
    end
    card = Sc.pop
  end
end
