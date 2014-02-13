class Addkids2 < ActiveRecord::Migration
  def up
    create_table :add_kids2 do |ak|
      ak.string :first_name
      ak.string :last_name
      ak.boolean :soy2
      ak.boolean :peanuts2
      ak.boolean :wheat2
      ak.boolean :milk2
      ak.boolean :nuts2
      ak.boolean :eggs2
      ak.boolean :asthma2
      ak.string :other2


      ak.timestamps
    end
  end

  def down
  end
end
