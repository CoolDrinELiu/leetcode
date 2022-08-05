# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
  nums.push 0
  nums.uniq.length - 1
end