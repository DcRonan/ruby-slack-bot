require 'open-uri'

module PremierLeague
  class GetPrem < SlackRubyBot::Commands::Base
    command 'fixtures' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/fixtures')
    end

    command 'clubs' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/clubs')
    end

    command 'results' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/results')
    end
  end
end
