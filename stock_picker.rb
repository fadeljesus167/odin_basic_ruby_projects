#!/usr/bin/env ruby
def stock_picker(prices)
  buy_price = prices.first
  sell_price = prices[1]
  buy_day = 0
  sell_day = 1

  prices.each_with_index do |price, day|
    if (price > sell_price && day > buy_day)
      sell_price = price
      sell_day = day
    end

    if (price < buy_price && day < prices.length - 1)
      buy_price = price
      buy_day = day
    end
  end

  return [buy_day, sell_day]
end


puts stock_picker(ARGV[0].split(" ").map(&:to_i)).inspect