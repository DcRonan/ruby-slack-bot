# rubocop:disable Layout/LineLength

require 'rspec/expectations'
require_relative '../lib/matches/get_text.rb'

RSpec::Matchers.define :respond_with_slack_message do |expected|
  include SlackRubyBot::SpecHelpers

  match do |actual|
    client = respond_to?(:client) ? send(:client) : SlackRubyBot::Client.new

    message_command = SlackRubyBot::Hooks::Message.new
    channel, user, message, attachments = parse(actual)

    allow(client).to receive(:message) do |options|
      @messages ||= []
      @messages.push options
    end

    message_command.call(client, Hashie::Mash.new(text: message, channel: channel, user: user, attachments: attachments))

    matcher = have_received(:message).once
    matcher = matcher.with(hash_including(channel: channel, text: expected)) if channel && expected

    expect(client).to matcher

    true
  end

  failure_message do |_actual|
    message = "expected to receive message with text: #{expected} once,\n received:"
    message += @messages&.any? ? @messages.inspect : 'none'
    message
  end
end

describe SlackRubyBot::Bot do
  it 'Checks if the response is correct when sending \'hey\'' do
    expect(message: "#{SlackRubyBot.config.user} hey").to respond_with_slack_message('Hi there! 👋 How are you today? 😁')
  end

  it 'Checks if the response is not a given message when sending \'hey\'' do
    expect(message: "#{SlackRubyBot.config.user} hey").not_to respond_with_slack_message('Hey! How are you?')
  end

  it 'Checks if the message contains the emoji 👋' do
    expect(message: "#{SlackRubyBot.config.user} hey").to respond_with_slack_message(/👋/)
  end

  it 'Checks if the response is correct when sending \'thanks\'' do
    expect(message: "#{SlackRubyBot.config.user} thanks").to respond_with_slack_message("Great to hear! 😊 Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Let's get to know each other first, what is your Favourite Club? ⭐")
  end

  it 'Checks if the response is not a given message when sending \'thanks\'' do
    expect(message: "#{SlackRubyBot.config.user} thanks").not_to respond_with_slack_message('Nice to hear. Cant wait to talk.')
  end

  it 'Checks if the message contains the emoji 🤖' do
    expect(message: "#{SlackRubyBot.config.user} thanks").to respond_with_slack_message(/🤖/)
  end

  it 'Checks if the response is correct when sending \'upset\'' do
    expect(message: "#{SlackRubyBot.config.user} upset").to respond_with_slack_message("I'm sorry to hear that 😔, I hope you feel better soon! Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Let's get to know each other first, what is your Favourite Club? ⭐")
  end

  it 'Checks if the response is not a given message when sending \'upset\'' do
    expect(message: "#{SlackRubyBot.config.user} upset").not_to respond_with_slack_message('Don\'t care.')
  end

  it 'Checks if the message contains the emoji 😔' do
    expect(message: "#{SlackRubyBot.config.user} upset").to respond_with_slack_message(/😔/)
  end

  it 'Checks if the response is correct when sending \'spurs\'' do
    expect(message: "#{SlackRubyBot.config.user} spurs").to respond_with_slack_message("Meh.. jokes, not a bad choice 😅.
When you\'re ready go ahead and type \'help\' to get started!!")
  end

  it 'Checks if the response is not a given message when sending \'spurs\'' do
    expect(message: "#{SlackRubyBot.config.user} spurs").not_to respond_with_slack_message('Good to hear!')
  end

  it 'Checks if the message contains the emoji 😅' do
    expect(message: "#{SlackRubyBot.config.user} spurs").to respond_with_slack_message(/😅/)
  end

  it 'Checks if the response is correct when sending \'upset\'' do
    expect(message: "#{SlackRubyBot.config.user} upset").to respond_with_slack_message("I'm sorry to hear that 😔, I hope you feel better soon! Let me introduce myself.. I am a Bot 🤖 and I contain all sorts of information on the Premier League. Let's get to know each other first, what is your Favourite Club? ⭐")
  end

  it 'Checks if the response is correct when sending \'chelsea\'' do
    expect(message: "#{SlackRubyBot.config.user} chelsea").to respond_with_slack_message("A big NO NO, please leave.. nah i'm only joking you can stay 🤣.
When you\'re ready go ahead and type \'help\' to get started!!")
  end

  it 'Checks if the response is not a given message when sending \'chelsea\'' do
    expect(message: "#{SlackRubyBot.config.user} chelsea").not_to respond_with_slack_message('Amazing!')
  end

  it 'Checks if the message contains the emoji 🤣' do
    expect(message: "#{SlackRubyBot.config.user} chelsea").to respond_with_slack_message(/🤣/)
  end

  it 'Checks if the response is correct when sending \'lfc\'' do
    expect(message: "#{SlackRubyBot.config.user} lfc").to respond_with_slack_message("You'll Never Walk Alone! ⭐
When you\'re ready go ahead and type \'help\' to get started!! 😊")
  end

  it 'Checks if the response is not a given message when sending \'lfc\'' do
    expect(message: "#{SlackRubyBot.config.user} lfc").not_to respond_with_slack_message('Not for me.')
  end

  it 'Checks if the message contains the emoji ⭐' do
    expect(message: "#{SlackRubyBot.config.user} lfc").to respond_with_slack_message(/⭐/)
  end
end

# rubocop:enable Layout/LineLength
