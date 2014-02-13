class CreateAddkids < ActiveRecord::Migration
  def change

    create_table :add_kids do |ak|
      ak.string :first_name
      ak.string :last_name
      ak.boolean :soy
      ak.boolean :peanuts
      ak.boolean :wheat
      ak.boolean :milk
      ak.boolean :nuts
      ak.boolean :eggs
      ak.boolean :asthma
      ak.string :other
      ak.boolean :other_checkbox


      ak.timestamps
    end
  end
end
