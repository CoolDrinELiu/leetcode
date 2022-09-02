require 'pry'
def max_profit(prices)
  sum = 0
  prices[1..-1].each_with_index do |current, index|
    sum += (current - prices[index]) if current > prices[index]
  end
  return sum
end

max_profit [7,1,5,3,6,4]

# Input: prices = [7,1,5,3,6,4]
# Output: 7
# Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
# Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
# Total profit is 4 + 3 = 7.

# min = prices[0]
# max = Float::INFINITY
# profits = []
