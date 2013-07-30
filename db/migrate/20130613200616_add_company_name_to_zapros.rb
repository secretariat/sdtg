class AddCompanyNameToZapros < ActiveRecord::Migration
  def change
    add_column :zapros, :company_name, :string
  end
end
