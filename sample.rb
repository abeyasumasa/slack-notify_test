require "slack-notify"
require 'clockwork'
require 'active_support/time'
include Clockwork

module Clockwork
    every(3.minute, 'one_minute') do
      client = SlackNotify::Client.new(
        webhook_url:'https://hooks.slack.com/services/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',
        channel: '#slack-notify',
        username: 'slack-notify bot',
      )
      client.notify("Hello There！")
    end

end