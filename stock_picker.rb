def stock_picker(stocks)
  day_to_buy = nil
  day_to_sell = nil
  profit = 0

  for i in (0...stocks.length)
    for j in (0...stocks.length)
      potential = stocks[j] - stocks[i]
      next unless potential > profit && j > i

      day_to_buy = i
      day_to_sell = j
      profit = potential
    end
  end
  [day_to_buy, day_to_sell]
end

# Generate stocks array with random prices between $20.00 and $21.00 for 365 days
stocks = Array.new(365) { rand(2000..2100) }.map { |s| s / 100.0 }
trade = stock_picker(stocks)

puts "Buy on day #{trade[0]} for $#{stocks[trade[0]]}.
Sell on day #{trade[1]} for $#{stocks[trade[1]]}.
--- For a total profit of $#{stocks[trade[1]] - stocks[trade[0]]}"
