class AddLangToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :lang, :string
  end
end
