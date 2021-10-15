# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/submissions/

def max_profit(prices)
  return 0 if prices.length <= 1
  min = prices.first
  max = 0
  puts "min is #{min}"
  puts "max is #{max}"
  prices[1..-1].each do |price|
    min = [min, price].min
    max = [max, price-min].max
    puts "min is #{min}"
    puts "max is #{max}"
  end
  max
end

max_profit [7,6,4,3,1]