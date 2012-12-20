# -*- encoding : utf-8 -*-
class CreateTransps < ActiveRecord::Migration
  def change
    create_table :transps do |t|
      t.string :name

      t.timestamps
    end
  end
end
