# frozen_string_literal: true

# rubocop:disable Layout/LineLength, Metrics/BlockLength

require 'slack-ruby-bot/rspec'
require 'rspec/expectations'
require_relative '../lib/commands/get_prem.rb'

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

describe SlackRubyBot::Commands do
  it 'Checks if the Bot returns a message for \'fantasy\'' do
    expect(message: "#{SlackRubyBot.config.user} fantasy").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'fantasy\'' do
    expect(message: "#{SlackRubyBot.config.user} fantasy").to respond_with_slack_message('https://fantasy.premierleague.com/')
  end

  it 'Checks if the Bot returns a message for \'fixtures\'' do
    expect(message: "#{SlackRubyBot.config.user} fixtures").to respond_with_slack_message
  end

  it 'Checks if the Bot returns a message for \'fixtures\'' do
    expect(message: "#{SlackRubyBot.config.user} fixtures").to respond_with_slack_message('https://www.premierleague.com/fixtures')
  end

  it 'Checks if the Bot returns a message for \'clubs\'' do
    expect(message: "#{SlackRubyBot.config.user} clubs").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'clubs\'' do
    expect(message: "#{SlackRubyBot.config.user} clubs").to respond_with_slack_message('https://www.premierleague.com/clubs')
  end

  it 'Checks if the Bot returns a message for \'results\'' do
    expect(message: "#{SlackRubyBot.config.user} results").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'results\'' do
    expect(message: "#{SlackRubyBot.config.user} results").to respond_with_slack_message('https://www.premierleague.com/results')
  end

  it 'Checks if the Bot returns a message for \'tables\'' do
    expect(message: "#{SlackRubyBot.config.user} tables").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'tables\'' do
    expect(message: "#{SlackRubyBot.config.user} tables").to respond_with_slack_message('https://www.premierleague.com/tables')
  end

  it 'Checks if the Bot returns ta message for \'transfers\'' do
    expect(message: "#{SlackRubyBot.config.user} transfers").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'transfers\'' do
    expect(message: "#{SlackRubyBot.config.user} transfers").to respond_with_slack_message('https://www.premierleague.com/transfers')
  end

  it 'Checks if the Bot returns a message for \'tickets\'' do
    expect(message: "#{SlackRubyBot.config.user} tickets").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'tickets\'' do
    expect(message: "#{SlackRubyBot.config.user} tickets").to respond_with_slack_message('https://www.premierleague.com/tickets')
  end

  it 'Checks if the Bot returns a message for \'players\'' do
    expect(message: "#{SlackRubyBot.config.user} players").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'players\'' do
    expect(message: "#{SlackRubyBot.config.user} players").to respond_with_slack_message('https://www.premierleague.com/players')
  end

  it 'Checks if the Bot returns a message for \'managers\'' do
    expect(message: "#{SlackRubyBot.config.user} managers").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'managers\'' do
    expect(message: "#{SlackRubyBot.config.user} managers").to respond_with_slack_message('https://www.premierleague.com/managers')
  end

  it 'Checks if the Bot returns the link for \'news\'' do
    expect(message: "#{SlackRubyBot.config.user} news").to respond_with_slack_message
  end

  it 'Checks if the Bot returns the link for \'news\'' do
    expect(message: "#{SlackRubyBot.config.user} news").to respond_with_slack_message('https://www.premierleague.com/news')
  end
end

# rubocop:enable Layout/LineLength, Metrics/BlockLength
