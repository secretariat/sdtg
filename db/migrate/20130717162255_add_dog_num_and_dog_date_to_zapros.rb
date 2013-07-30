class AddDogNumAndDogDateToZapros < ActiveRecord::Migration
  def change
    add_column :zapros, :dog_num, :string
    add_column :zapros, :dog_date, :datetime
  end
end
