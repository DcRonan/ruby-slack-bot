require 'open-uri'

module PremierLeague
  class Response < SlackRubyBot::Bot
    match /(hello|hey)/ do |client, data, _match|
      client.say(channel: data.channel, text: "Hi there! 👋 How are you today? 😁")
    end

    match /(great|good|thanks|thank)/ do |client, data, match|
      client.say(channel: data.channel, text: "Great to hear! 😊 Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Type 'help' to start off!! (Unless if I am in one of your channels and not my app, then pelase mention my name first! like so: @Premier League help)")
    end

    match /(sad|upset|down|ill|sick)/ do |client, data, match|
      client.say(channel: data.channel, text: "I'm sorry to hear that 😔, I hope you feel better soon! Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Type 'help' to start off!! (Unless if I am in one of your channels and not my app, then pelase mention my name first! like so: @Premier League help)")
    end 
  end  
end
