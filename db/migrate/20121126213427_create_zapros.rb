# -*- encoding : utf-8 -*-
class CreateZapros < ActiveRecord::Migration
  def change
    create_table :zapros do |t|
    	t.string :naim
    	t.string :code
    	t.string :tamrez
    	t.string :typetran
        t.string :koltov
        t.string :base_ed
    	t.string :dop_ed
        t.string :stoim
        t.string :ed
    	t.string :total
    	t.string :path_ryhy
    	t.string :chastota
    	t.string :fio
    	t.string :rank
    	t.string :phone
    	t.string :email
        t.string :fpath
        t.string :att
        t.string :att_file_name
    	t.text :dopinfo

      t.timestamps
    end
  end
end
