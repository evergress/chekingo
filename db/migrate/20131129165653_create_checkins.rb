class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |c|
      c.string		:first_name
      c.string		:last_name
      c.string		:allergens
      c.integer		:pin

      c.timestamps
    end
  end
end
