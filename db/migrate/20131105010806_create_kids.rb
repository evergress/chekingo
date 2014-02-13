class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |k|
      k.string :first_name
      k.string :last_name
      k.date :birthdate
      k.string :allergens
      k.integer :group_id
      k.timestamps
    end
  end
end
