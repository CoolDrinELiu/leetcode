# https://leetcode.com/problems/two-sum/
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |number, index|
    p hash
    if hash[target - number]
      return [hash[target - number], index]
    else
      hash[number] = index
    end
  end
end