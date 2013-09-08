class AddCodeEdrToZapros < ActiveRecord::Migration
  def change
    add_column :zapros, :code_edr, :string
  end
end
