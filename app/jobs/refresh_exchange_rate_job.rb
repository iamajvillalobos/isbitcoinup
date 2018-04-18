class RefreshExchangeRateJob
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    RefreshExchangeRate.()
  end
end
