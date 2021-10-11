require 'pry'
# https://leetcode.com/problems/integer-to-english-words/
NUMBERS = {
  1_000_000_000 => "Billion",
  1_000_000 => "Million",
  1000 => "Thousand",
  100 => "Hundred",
  90 => "Ninety",
  80 => "Eighty",
  70 => "Seventy",
  60 => "Sixty",
  50 => "Fifty",
  40 => "Forty",
  30 => "Thirty",
  20 => "Twenty",
  19 => "Nineteen",
  18 => "Eighteen",
  17 => "Seventeen", 
  16 => "Sixteen",
  15 => "Fifteen",
  14 => "Fourteen",
  13 => "Thirteen",              
  12 => "Twelve",
  11 => "Eleven",
  10 => "Ten",
  9 => "Nine",
  8 => "Eight",
  7 => "Seven",
  6 => "Six",
  5 => "Five",
  4 => "Four",
  3 => "Three",
  2 => "Two",
  1 => "One"
}

def number_to_words(num)
  return "Zero" if num == 0
  str = []
  NUMBERS.each do |tmp, name|
    times = num / tmp
    next if times == 0
    if num > 0 && num < 100
      str.push name
      num = num - tmp
    elsif num >= 100
      if times >= 20
        str.push number_to_words(times)
        str.push name
      else
        str.push NUMBERS[times]
        str.push name
      end
      num = num - times * tmp
    end
  end
  str.join(' ')
end

p number_to_words 25942