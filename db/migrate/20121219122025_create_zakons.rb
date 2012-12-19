class CreateZakons < ActiveRecord::Migration
  def change
    create_table :zakons do |t|
      t.string :name
      t.string :link
      t.boolean :visible

      t.timestamps
    end
  end
end
