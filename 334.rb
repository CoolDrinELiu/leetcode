require 'pry'
def increasing_triplet(nums)
  low = Float::INFINITY
  mid = Float::INFINITY
  nums[0..-1].each_with_index do |current, index|
    if current <= low
      low = current
    elsif current <= mid
      mid = current
    end
    current > low && current > mid
  end
  return false
end


increasing_triplet([2,1,5,0,4,6])

low     mid
-       -
2