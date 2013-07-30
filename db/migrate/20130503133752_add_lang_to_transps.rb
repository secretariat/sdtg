class AddLangToTransps < ActiveRecord::Migration
  def change
    add_column :transps, :lang, :string, :default => "ru"
  end
end
