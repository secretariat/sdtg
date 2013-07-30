# -*- encoding : utf-8 -*-
class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :unit
      t.string :rank
      t.string :fio
      t.string :phone_g1
      t.string :phone_g2
      t.string :mobile1
      t.string :mobile2
      t.string :skype
      t.string :email1
      t.string :email2
      t.boolean :visible

      t.timestamps
    end
  end
end
