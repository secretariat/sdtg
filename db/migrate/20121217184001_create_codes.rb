# -*- encoding : utf-8 -*-
class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :name

      t.timestamps
    end
  end
end
