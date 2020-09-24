require 'open-uri'

module PremierLeague
  class Responses < SlackRubyBot::Bot
    match / (hello|hi|hey) / do |client, data, _match|
      client.say(channel: data.channel, text: "Hi there! 👋 How are you today? 😁")
    end
  end  
end
