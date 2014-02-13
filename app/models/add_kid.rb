class AddKid < ActiveRecord::Base
  belongs_to :guestparent
  attr_accessible :first_name, :last_name, :soy, :peanuts, :milk, :wheat, :nuts, :eggs, :asthma, :other, :other_checkbox, :pin

  def send_text_message
    @number_to_sent_to = "+13367077939"

    @account_sid = 'AC930beb48c49aab7dd085bad7c29565cc'
    @auth_token = 'a21c37d8605d21e0a0f090b490b209b9'

    @client = Twilio::REST::Client.new(@account_sid, @auth_token)

    @account = @client.account
    @message = @account.sms.messages.create({:from => '+13368236576', :to => @number_to_sent_to, :body => 'You have logged in.' })

    puts @message
  end

end
