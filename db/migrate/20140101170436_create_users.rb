class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
  		t.text :first_name
  		t.text :last_name
  		t.text :phone_number, :limit => 15
  		t.text :username
  		t.text :password
  		t.text :email
        t.timestamps
    end
  end
end
