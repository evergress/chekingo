class Child < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :allergens, :birthdate, :image, :user_id
  belongs_to :user
end
