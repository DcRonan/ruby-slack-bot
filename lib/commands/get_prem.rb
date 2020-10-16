require 'open-uri'

module PremierLeague
  # Class for getting links from commands
  class GetPrem < SlackRubyBot::Commands::Base
    command 'fantasy' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://fantasy.premierleague.com/')
    end

    command 'fixtures' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/fixtures')
    end

    command 'clubs' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/clubs')
    end

    command 'results' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/results')
    end

    command 'tables' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/tables')
    end

    command 'goals' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/stats/top/players/goals')
    end

    command 'assists' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/stats/top/players/goal_assist')
    end

    command 'transfers' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/transfers')
    end

    command 'tickets' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/tickets')
    end

    command 'players' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/players')
    end

    command 'managers' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/managers')
    end

    command 'news' do |client, data, _match|
      client.say(channel: data.channel, text: 'https://www.premierleague.com/news')
    end
  end
end
