# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/submissions/

def max_profit(prices)
  return 0 if prices.length <= 1
  min = prices.min
  max = 0

  prices[1..-1].each do |price|
    min = price if price <= min
    max = price if price >= max
  end
  max - min
end