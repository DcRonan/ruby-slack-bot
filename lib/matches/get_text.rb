# rubocop:disable Layout/LineLength

require 'open-uri'

module PremierLeague
  # Class for text responses
  class Response < SlackRubyBot::Bot
    match(/(hello|hey)/) do |client, data, _match|
      client.say(channel: data.channel, text: 'Hi there! 👋 How are you today? 😁')
    end

    match(/(great|good|thanks|thank)/) do |client, data, _match|
      client.say(channel: data.channel, text: "Great to hear! 😊 Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Let's get to know each other first, what is your Favourite Club? ⭐")
    end

    match(/(sad|upset|down|ill|sick)/) do |client, data, _match|
      client.say(channel: data.channel, text: "I'm sorry to hear that 😔, I hope you feel better soon! Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Let's get to know each other first, what is your Favourite Club? ⭐")
    end

    match(/(leeds|soton|south|spurs|totten)/) do |client, data, _match|
      client.say(channel: data.channel, text: 'Meh.. jokes, not a bad choice 😅.
When you\'re ready go ahead and type \'help\' to get started!!')
    end

    match(/(man|mufc|blues|chelsea|everton)/) do |client, data, _match|
      client.say(channel: data.channel, text: "A big NO NO, please leave.. nah i'm only joking you can stay 🤣.
When you\'re ready go ahead and type \'help\' to get started!!")
    end

    match(/(liv|lfc)/) do |client, data, _match|
      client.say(channel: data.channel, text: "You'll Never Walk Alone! ⭐
When you\'re ready go ahead and type \'help\' to get started!! 😊")
    end
  end
end

# rubocop:enable Layout/LineLength
