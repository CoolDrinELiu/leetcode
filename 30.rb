def find_substring(s, words)
  return [] if words.empty? || s.nil?
  words = words.sort
  unit = words.first.length
  n = s.length
  result = []
  (0..n).each do |start|
    index_end = start + unit
    the_char = s[start..(index_end- 1)]
    all_from_the_words = false
    inner_start = start
    if words.include? the_char
      temp_result = []
      temp_result.push the_char
      all_from_the_words = true
      (0..(words.length-2)).each do |x|
        inner_start = inner_start + unit
        index_end = inner_start + unit
        test_char = s[inner_start..(index_end- 1)]
        temp_result.push test_char
        return result if test_char.nil?
      end
      all_from_the_words = all_from_the_words && temp_result.sort == words
    else
      all_from_the_words = false
    end
    
    result.push start if all_from_the_words
  end
  result
end

def find_substring(s, words)
  return [] if words.empty?
  word_len = words.first.length
  words_num = words.length
  word_tally = Hash.new(0)
  words.each { |w| word_tally[w] += 1 }
  (0..(s.length - word_len * words_num)).select do |i|
    counter = Hash.new(0)
    (0...words_num).all? do |j|
      substr = s[i + j * word_len, word_len]
      counter[substr] += 1
      counter[substr] <= word_tally[substr]
    end
  end
end