# -*- encoding : utf-8 -*-
class CreateAnketa < ActiveRecord::Migration
  def change
    create_table :anketa do |t|
      t.integer :quest_1
      t.integer :quest_2
      t.integer :quest_3
      t.integer :quest_4
      t.integer :quest_5
      t.text :wishes
      t.string :pib
      t.string :uaddr
      t.string :contacts

      t.timestamps
    end
  end
end
