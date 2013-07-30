class AddLangToZakons < ActiveRecord::Migration
  def change
    add_column :zakons, :lang, :string
  end
end
