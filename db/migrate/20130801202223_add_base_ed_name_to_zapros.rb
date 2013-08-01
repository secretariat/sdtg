class AddBaseEdNameToZapros < ActiveRecord::Migration
  def change
    add_column :zapros, :base_ed_name, :string
  end
end
