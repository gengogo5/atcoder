require 'bigdecimal'
require 'bigdecimal/util'
L = gets.to_i

lb = BigDecimal(L)
lb3 = lb / BigDecimal("3.0")

ans = lb3 * lb3 * lb3
puts ans.to_s('f')
