class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :login
      t.string :email
      t.string :hash_pass
      t.string :hash_salt
      t.integer :priv_level

      t.timestamps
    end
  end
end
