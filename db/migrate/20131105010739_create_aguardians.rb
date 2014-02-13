class CreateAguardians < ActiveRecord::Migration
  def change
    create_table :aguardians do |ag|
      ag.string :first_name
      ag.string :last_name
      ag.integer :phone_number
      ag.integer :pin
      ag.string :email
      ag.string :location
      ag.integer :group_id
      ag.timestamps
    end
  end
end
