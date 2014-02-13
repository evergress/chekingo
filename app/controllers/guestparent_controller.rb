
class GuestparentController < ApplicationController
  def index
    @pin = rand(0001..9999)
  end

  def new
  	@guestparent = Guestparent.new
  end

  def create
  	@guestparent = Guestparent.new(params[:guestparent])

    respond_to do |format|
    	if @guestparent.valid? && @guestparent.save

        #send_text_message
        format.html {redirect_to controller: :add_kid, action: :index, pin: @guestparent.pin }
    	else
        flash[:notice] = "#{@guestparent.errors.full_messages.to_sentence}"
    		format.html {render :index}
    	end
    end
  end

  def send_text_message
    @number_to_sent_to = "+13367077939"

    @account_sid = 'AC930beb48c49aab7dd085bad7c29565cc'
    @auth_token = 'a21c37d8605d21e0a0f090b490b209b9'

    @client = Twilio::REST::Client.new(@account_sid, @auth_token)

    @account = @client.account
    @message = @account.sms.messages.create({:from => '+13368236576', :to => @number_to_sent_to, :body => "You have logged in. Your pin is #{@guestparent.pin}. Use this pin to log out." })

    puts @message
  end

end
