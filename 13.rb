require 'pry'
# https://leetcode.com/problems/roman-to-integer/
def roman_to_int s
  roman_dic = {
    "I"=>1,
    "V"=>5,
    "X"=>10,
    "L"=>50,
    "C"=>100,
    "D"=>500,
    "M"=>1000}
    prev_char = s[0]
    total = 0
  s.each_char do |current_char|
    if roman_dic[current_char] > roman_dic[prev_char]
      total = total - roman_dic[prev_char]
      total = total + (roman_dic[current_char] - roman_dic[prev_char])
    else
      total = total + roman_dic[current_char]
    end
    prev_char = current_char
  end
  total
end

p roman_to_int "IV"