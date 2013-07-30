class AddSumCustPaymentToZapros < ActiveRecord::Migration
  def change
    add_column :zapros, :sum_cust_payment, :string
  end
end
