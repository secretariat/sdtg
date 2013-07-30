class AddLangToFaqs < ActiveRecord::Migration
  def change
    add_column :faqs, :lang, :string
  end
end
