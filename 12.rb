# https://leetcode.com/problems/integer-to-roman/
# @param {Integer} num
# @return {String}
def int_to_roman(num)
  digits_to_roman = {1000 => "M", 900 => "CM", 500=> "D", 400=> "CD", 100=> "C", 90=> "XC", 50=> "L", 40=> "XL", 10=> "X", 9=> "IX", 5=> "V", 4=> "IV", 1=> "I"}
  roman_str = ""
  digits_to_roman.each do |n, str|
    if num > 0
      times = num / n
      roman_str = roman_str + str * times
      num = num - n * times
    end
  end
  roman_str
end

puts int_to_roman 1004