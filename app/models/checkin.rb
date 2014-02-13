class Checkin < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :allergens, :pin
end
