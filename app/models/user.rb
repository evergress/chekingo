class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone_number, :email, :username, :password
  has_many :children
  def User.authenticate(phone, pin)
  	find_phone = User.where(phone_number: phone)
    find_pin   = Aguardian.where(pin: pin)

    user = User.find(find_phone)

    if find_phone != [] #&& find_pin != []
  		true
    else
      false
  	end
  end  


end
