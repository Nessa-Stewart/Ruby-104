require 'rubygems'
require 'twilio-ruby'

account_sid = "AC871c9a2cd700b1dd3d9117030851400f"
auth_token = "206036c9036f694e3d4473e43ba49b2d"

@client = Twilio::REST::Client.new(account_sid, auth_token)

@message = @client.messages.create(
  :from => "+17377779508", 
  :to =>"+15126996545", 
  :body => "Haaaii!"
)
 
puts @message.status