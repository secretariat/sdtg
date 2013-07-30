class AddLangToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :lang, :string, :default => "ru"
  end
end
