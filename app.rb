# require 'sinatra'
require 'rubygems'
require 'twilio-ruby'

account_sid = '' 
auth_token = '' 

@client = Twilio::REST::Client.new account_sid, auth_token 
@account = @client.account

msg = @account.messages.list.first
# puts msg.methods
puts "to:     " + msg.to
puts "from:   " + msg.from
puts "body:   " + msg.body
puts "status: " + msg.status
puts msg.date_created
puts msg.date_updated
puts msg.date_sent
