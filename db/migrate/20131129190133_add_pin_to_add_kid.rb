class AddPinToAddKid < ActiveRecord::Migration
  def change
  	add_column :add_kids, :pin, :integer
  end
end
