require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC4cc3c1886f783bbc9b18fc0f67a54b36'
auth_token = '895f1a20d77862b3ff971d116425b33e'
@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.sms.messages.create(:body => "Hello, world!", :to => "+447967764771", :from => "+441384901538")
puts message.sid
