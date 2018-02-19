puts "Ask a yes/no question!"

question = gets.chomp

answers = ["It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"]

    ball_answer = answers[rand(0..19)]

    require 'rubygems'
    require 'twilio-ruby'

    account_sid = "AC871c9a2cd700b1dd3d9117030851400f"
	auth_token = "206036c9036f694e3d4473e43ba49b2d"

	@client = Twilio::REST::Client.new(account_sid, auth_token)

@message = @client.messages.create(
  :from => "+17377779508", 
  :to =>"+15126996545", 
  :body => "You asked: #{question} The Magic 8-ball says: #{ball_answer}"
)

puts "The following message was texted to #{message.to}:"
puts @message.body