require 'bigdecimal'
require 'bigdecimal/util'

N = gets.to_i
c = N.times.map { gets.chomp.split }

sum = BigDecimal('0.0')

N.times { |i|
  tanni = c[i][1]
  num = BigDecimal(c[i][0])

  jpy = BigDecimal('0.0')
  if tanni == 'JPY'
    jpy = num
  else
    jpy = (BigDecimal('380000.0') * num)
  end
  sum = sum + jpy
}
puts sum.to_s('F')
