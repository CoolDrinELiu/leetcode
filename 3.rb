def length_of_longest_substring(str)
  return str.size if str.size <= 1
  hash = {}
  max = 0
  left = 0
  str.chars.each_with_index do |char, right|
    if hash.key?(char)
      left = [hash[char] + 1, left].max
    end
    hash[char] = right
    max = [(right + 1) - left, max].max
  end
  max || 0
end