# https://leetcode.com/problems/reverse-integer/
def reverse(x)
  return 0 if x.zero?
  flag = x.negative? ? -1 : 1
  v = x.to_s.reverse.to_i
  v.bit_length < 32 ? v * flag : 0
end