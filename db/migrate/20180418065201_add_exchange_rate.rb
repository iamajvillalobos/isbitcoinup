class AddExchangeRate < ActiveRecord::Migration[5.2]
  def change
    create_table :exchange_rates do |t|
      t.string :price_usd
      t.string :percent_change_1h
      t.string :percent_change_24h
      t.string :percent_change_7d
      t.timestamps
    end
  end
end
