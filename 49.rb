# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  strs.group_by{|x| x.chars.sort}.values
end