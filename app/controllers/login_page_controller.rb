class LoginPageController < ApplicationController
  before_filter :purge, only: :index

  def index
  end

  def create
    user = User.authenticate(params[:phone], params[:pin]) 
    if user == true
    	redirect_to controller: :select_kid, action: :index
    elsif user == false
    	redirect_to action: :index
    end
  end

  def purge
    #Purge GuestParent Data
    @guestparents = Guestparent.all 
    @guestparents.each do |gp|
      gp.delete
    end
    @kids = AddKid.all 
    @kids.each do |kid|
      kid.delete
    end
  end

end
