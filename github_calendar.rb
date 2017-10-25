require 'matrix'
require 'pp'
require 'date'
require 'time'

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

=begin
0 0 1
3 0 1
2 1 2
1 0 3
=end

first_column = ((Date.today.prev_year.prev_day(7))..Date.today.prev_year).select(&:sunday?).first

