
class AddKidController < ApplicationController
  def index
    
  end

  def new
  	@kid = AddKid.new
  end

  def create
  	@kid = AddKid.new(params[:guestparent_kids][:add_kids])
    @kid2 = AddKid.new(params[:guestparent_kids][:add_kid2])
    @kid3 = AddKid.new(params[:guestparent_kids][:add_kid3])

    [@kid, @kid2, @kid3].each do |kid|
      if kid.first_name == "" && kid.last_name == ""
        next
      else
        kid.save
        Checkin.create(first_name: "#{kid.first_name}", last_name: "#{kid.last_name}", allergens: "#{kid.other}", pin: "#{kid.pin}")
      end
    end

    kids = AddKid.all

    if kids.count > 0
      redirect_to controller: :summary_page, action: :index
    else
      render :index
    end

  end

  def allergens
    @allergens = AddKid.all
    @allergens.attributes.each do |key, value|
          if value == true
             key
          end               
    end 
  end

  def savepin(pin)
    @pin = pin
  end
end
