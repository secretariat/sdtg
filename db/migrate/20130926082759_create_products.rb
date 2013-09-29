class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :zapros_id
    	t.string :naim
    	t.string :code_num
    	t.string :code
    	t.string :koltov
    	t.string :base_ed
    	t.string :dop_ed
    	t.string :dop_ed_name
    	t.string :stoim
    	t.string :ed
    	t.string :total
      t.string :sum_cust_payment
      t.string :another_currency
      t.timestamps
    end
  end
end
