class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |k|
    	k.integer :user_id
  		k.string :first_name
  		k.string :last_name
  		k.string :allergens
  		k.date :birthdate
  		k.binary :image
        k.timestamps
    end
      	add_index :children, :user_id
  end
end
