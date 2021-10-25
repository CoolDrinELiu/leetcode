# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  result = []
  nums.each_slice(3) do |three_arr|
    stack = two_sum([three_arr[0], three_arr[1..2].sum], -three_arr[1..2].sum)
    result.push [three_arr] if stack.any?
  end
  result
end

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
