# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

module PremierLeague
  # Class for the Bot help
  class Bot < SlackRubyBot::Bot
    help do
      title 'Premier League App'
      desc 'This app brings you the relative information on the Premier League'

      command :fantasy do
        title 'fantasy'
        desc 'Returns the \'Fantasy Football\' page'
        long_desc 'Returns the \'Fantasy Football\' page'
      end

      command :fixtures do
        title 'fixtures'
        desc 'Returns the \'Fixtures\' page'
        long_desc 'Returns the \'Fixtures\' page'
      end

      command :clubs do
        title 'clubs'
        desc 'Returns the \'Clubs\' page'
        long_desc 'Returns the \'Clubs\' page'
      end

      command :results do
        title 'results'
        desc 'Returns the \'Results\' page'
        long_desc 'Returns the \'Results\' page'
      end

      command :tables do
        title 'tables'
        desc 'Returns the \'Tables\' page'
        long_desc 'Returns the \'Tables\' page'
      end

      command :transfers do
        title 'transfers'
        desc 'Returns the \'Transfers\' news page'
        long_desc 'Returns the \'Transfers\' news page'
      end

      command :tickets do
        title 'tickets'
        desc 'Returns the \'Tickets\' page'
        long_desc 'Returns the \'Tickets\' page'
      end

      command :players do
        title 'players'
        desc 'Returns the \'Players\' page'
        long_desc 'Returns the \'Players\' page'
      end

      command :managers do
        title 'managers'
        desc 'Returns the \'Managers\' page'
        long_desc 'Returns the \'Managers\' page'
      end

      command :news do
        title 'news'
        desc 'Returns the \'News\' page'
        long_desc 'Returns the \'News\' page'
      end
    end
  end
end

# rubocop:enable Metrics/BlockLength
