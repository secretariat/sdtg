class AddDopEdNameToZapros < ActiveRecord::Migration
  def change
    add_column :zapros, :dop_ed_name, :string
  end
end
