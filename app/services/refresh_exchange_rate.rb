class RefreshExchangeRate
  def self.call
    url = URI("https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=PHP")
    raw_response = Net::HTTP.get(url)
    response = JSON.parse(raw_response).first.symbolize_keys
    ExchangeRate.create!(
      price_usd: response[:price_usd],
      percent_change_1h: response[:percent_change_1h],
      percent_change_24h: response[:percent_change_24h],
      percent_change_7d: response[:percent_change_7d]
    )
  end
end
