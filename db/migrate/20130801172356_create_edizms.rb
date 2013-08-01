# -*- encoding : utf-8 -*-
class CreateEdizms < ActiveRecord::Migration
  def change
    create_table :edizms do |t|
      t.string :name
      t.string :lang
      t.boolean :visible
      t.timestamps
    end
  end
end
