# rubocop:disable Layout/LineLength

require 'open-uri'

module PremierLeague
  # Class for text responses
  class Response < SlackRubyBot::Bot
    match(/(hello|hey)/) do |client, data, _match|
      client.say(channel: data.channel, text: 'Hi there! 👋 How are you today?')
    end

    match(/(great|good|thanks|thank)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Great to hear! Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Let's get to know each other first, what is your Favourite Club? ⚽")
    end

    match(/(sad|upset|down|ill|sick)/) do |client, data, _match|
      client.say(channel: data.channel, text: "I'm sorry to hear that, I hope you feel better soon! Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Let's get to know each other first, what is your Favourite Club? ⚽")
    end

    match(/(leeds|lufc)/) do |client, data, _match|
      client.say(channel: data.channel, text: 'Marching On Together! 👊 This is what I know about Leeds United: https://www.leedsunited.com/')
    end

    match(/(arsenal|gunners|afc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Victory grows through harmony. This is what I know about Arsenal FC: https://www.arsenal.com/")
    end

    match(/(aston|vill|avfc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Prepared. This is what I know about Aston Villa F.C.: https://www.avfc.co.uk/")
    end

    match(/(lfc|liverpool)/) do |client, data, _match|
      client.say(channel: data.channel, text: "You'll Never Walk Alone 🏆. This is what I know about Liverpool FC: https://www.liverpoolfc.com/")
    end

    match(/(brighton|hove)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about Brighton & Hove Albion FC: https://www.brightonandhovealbion.com/")
    end

    match(/(burnley|bfc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about Burnley F.C.: https://www.burnleyfootballclub.com/")
    end

    match(/(chelsea|cfc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Nisi Domius Frustra. This is what I know about Chelsea F.C.: https://www.chelseafc.com/en")
    end

    match(/(crystal|cpfc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about Crystal Palace F.C. 🦅: https://www.cpfc.co.uk/")
    end

    match(/(everton|efc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Nothing but the best is good enough. This is what I know about Everton F.C.: https://www.evertonfc.com/home")
    end

    match(/(fulham|ffc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about Fulham FC: https://www.fulhamfc.com/")
    end

    match(/(leicester|lcfc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Foxes Never Quit 🦊. This is what I know about Leicester City F.C.: https://www.lcfc.com/")
    end

    match(/(mcfc|man-city)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Superbia in Proelio. This is what I know about Manchester City F.C.: https://www.mancity.com/")
    end

    match(/(mufc|manchester)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Youth, Courage, Greatness. This is what I know about Manchester Utd F.C.: https://www.manutd.com/en")
    end

    match(/(newcastle|nufc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about Newcastle F.C.: https://www.nufc.co.uk/")
    end

    match(/(sheffield|sufc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Youth, Courage, Greatness. This is what I know about Sheffield United F.C.: https://www.sufc.co.uk/")
    end

    match(/(soton|southampton)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about Southampton F.C.: https://www.southamptonfc.com/")
    end

    match(/(spurs|tottenham)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about Tottenham Hotspur F.C.: https://www.tottenhamhotspur.com/")
    end

    match(/(brom|bromwich)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about West Bromwich Albion F.C.: https://www.wba.co.uk/")
    end

    match(/(ham|whufc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "This is what I know about West Ham United F.C.: https://www.whufc.com/")
    end

    match(/(wolves|wolverhampton)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Out of darkness cometh light 🐺. This is what I know about Wolverhampton Wanderers F.C.: https://www.wolves.co.uk/")
    end
  end
end

# rubocop:enable Layout/LineLength
