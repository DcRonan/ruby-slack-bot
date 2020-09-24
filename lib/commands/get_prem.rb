require 'open-uri'

module PremierLeague
  class GetPrem < SlackRubyBot::Commands::Base
    command 'clubs' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/clubs')
    end
  end
end
