class CreateGuestparents < ActiveRecord::Migration
  def change
    create_table :guestparents do |gp|
      gp.string :first_name
      gp.string :last_name
      gp.integer :phone_number
      gp.integer :pin
      gp.timestamps
    end
  end
end
