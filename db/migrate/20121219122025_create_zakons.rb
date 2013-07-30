# -*- encoding : utf-8 -*-
class CreateZakons < ActiveRecord::Migration
  def change
    create_table :zakons do |t|
      t.text :name
      t.text :link
      t.boolean :visible

      t.timestamps
    end
  end
end
