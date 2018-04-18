class DashboardsController < ApplicationController
  def show
    @exchange_rate = ExchangeRate.last
    @status = status
  end

  private

  def status
    return "NO!" if down?
    "YES"
  end

  def down?
    @exchange_rate.percent_change_24h.include?("-")
  end
end
