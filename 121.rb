# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/submissions/

def max_profit(prices)
  return 0 if prices.length <= 1
  min = prices.first
  max = 0
  prices[1..-1].each do |price|
    min = [min, price].min
    max = [max, price-min].max
  end
  max
end

def max_profit(prices)
  return 0 if prices.length < 2
  max_profit = -Float::INFINITY
  min_price = prices.first
  prices.each do |price|
    min_price = price if min_price > price
    max_profit = [price - min_price, max_profit].max
  end
  return max_profit
end

max_profit [7,6,4,3,1]