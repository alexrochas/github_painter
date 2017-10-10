require 'matrix'
require 'pp'

=begin
1 8 15 22
2 9 16 23
3 10 17 24
4 11 18 25
5 12 19 26
6 13 20 27
7 14 21 28
=end

calendar = Matrix.build(7, 52) { |row, col|
  (col * 7) + (row + 1)
}

calendar.to_a.each {|r| puts r.inspect}

