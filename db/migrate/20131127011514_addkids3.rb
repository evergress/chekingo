class Addkids3 < ActiveRecord::Migration
  def up
    create_table :add_kids3 do |ak|
      ak.string :first_name
      ak.string :last_name
      ak.boolean :soy3
      ak.boolean :peanuts3
      ak.boolean :wheat3
      ak.boolean :milk3
      ak.boolean :nuts3
      ak.boolean :eggs3
      ak.boolean :asthma3
      ak.string :other3


      ak.timestamps
    end
  end

  def down
  end
end
