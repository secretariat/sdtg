class AddAnotherCurrencyToZapros < ActiveRecord::Migration
  def change
    add_column :zapros, :another_currency, :string
  end
end
