def max_sub_array(nums)
  return nums.first if nums.length == 1
  global_sum = nums[0]
  local_sum = nums[0]
  nums[1..-1].each do |num|
      local_sum = [num, local_sum + num].max
      global_sum = [local_sum, global_sum].max
  end
  global_sum
end