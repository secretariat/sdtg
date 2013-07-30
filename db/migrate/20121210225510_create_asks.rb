# -*- encoding : utf-8 -*-
class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|
      t.string :fio
      t.string :from
      t.string :subj
      t.text :question

      t.timestamps
    end
  end
end
