class AddLangToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :lang, :string, :default => "ru"
  end
end
