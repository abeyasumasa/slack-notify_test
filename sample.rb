require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv/load'

include Clockwork
  
client = SlackNotify::Client.new(
  webhook_url: ENV['SLACK_URL'],
  channel: '#slack-notify',
  username: 'slack-notify bot',
  )
    
every(3.minute, 'three_minute') do
  client.notify("Hello There！")
end
