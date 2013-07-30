class AddLangToTrs < ActiveRecord::Migration
  def change
    add_column :trs, :lang, :string, :default => "ru"
  end
end
