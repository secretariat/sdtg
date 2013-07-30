# -*- encoding : utf-8 -*-
class CreateTrs < ActiveRecord::Migration
  def change
    create_table :trs do |t|
      t.string :name

      t.timestamps
    end
  end
end
