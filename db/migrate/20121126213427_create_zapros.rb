# -*- encoding : utf-8 -*-
class CreateZapros < ActiveRecord::Migration
  def change
    create_table :zapros do |t|
    	t.string :naim
    	t.string :code
    	t.string :tamrez
    	t.string :typetran
    	t.string :koltov
    	t.string :stoim
    	t.string :path_ryhy
    	t.string :chastota
    	t.string :fio
    	t.string :rank
    	t.string :phone
    	t.string :email
    	t.string :fpath

      t.timestamps
    end
  end
end
