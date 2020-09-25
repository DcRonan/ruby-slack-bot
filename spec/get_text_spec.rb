# rubocop:disable Layout/LineLength

require 'rspec/expectations'
begin
  require 'slack-ruby-bot/rspec'
rescue LoadError
  system 'bundle install'
  system 'rspec'
  exit
end

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
  it 'Checks if the response is not a given message when sending \'hey\'' do
    expect(message: "#{SlackRubyBot.config.user} hey").not_to respond_with_slack_message('Hey! How are you?')
  end

  it 'Checks if the response is not a given message when sending \'thanks\'' do
    expect(message: "#{SlackRubyBot.config.user} thanks").not_to respond_with_slack_message('Nice to hear. Cant wait to talk.')
  end

  it 'Checks if the response is not a given message when sending \'upset\'' do
    expect(message: "#{SlackRubyBot.config.user} upset").not_to respond_with_slack_message('Don\'t care.')
  end

  it 'Checks if the response is not a given message when sending \'spurs\'' do
    expect(message: "#{SlackRubyBot.config.user} spurs").not_to respond_with_slack_message('Good to hear!')
  end

  it 'Checks if the response is not a given message when sending \'chelsea\'' do
    expect(message: "#{SlackRubyBot.config.user} chelsea").not_to respond_with_slack_message('Amazing!')
  end

  it 'Checks if the response is not a given message when sending \'lfc\'' do
    expect(message: "#{SlackRubyBot.config.user} lfc").not_to respond_with_slack_message('Not for me.')
  end
end

# rubocop:enable Layout/LineLength
