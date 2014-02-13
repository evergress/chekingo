class CreatePguardians < ActiveRecord::Migration
  def change
    create_table :pguardians do |pg|
      pg.string :first_name
      pg.string :last_name
      pg.integer :phone_number
      pg.integer :pin
      pg.string :email
      pg.string :location
      pg.integer :group_id
      pg.integer :agphone1
      pg.integer :agphone2
      pg.timestamps
    end
  end
end
