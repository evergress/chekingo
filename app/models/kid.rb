class Kid < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :birthdate, :allergens
end
