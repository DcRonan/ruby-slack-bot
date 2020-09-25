# rubocop:disable Metrics/BlockLength, Layout/LineLength

module PremierLeague
  # Class for the Bot help
  class Bot < SlackRubyBot::Bot
    help do
      title 'Premier League App'
      desc 'This app brings you the relative information on the Premier League
If in a channel: type @Premier League \'command name\' or \'help\' if in app'

      command :fantasy do
        title 'fantasy'
        desc 'Returns the \'Fantasy Football\' page'
        long_desc 'Fantasy Football is where you can be your own manager by selecting your own teams weekly before the big match weekends and try beat your friends or other random people on the leaderboards.'
      end

      command :fixtures do
        title 'fixtures'
        desc 'Returns the \'Fixtures\' page'
        long_desc 'Fixtures shows you the upcoming games including the dates, times, which clubs and what broadcast it will be showing on.'
      end

      command :clubs do
        title 'clubs'
        desc 'Returns the \'Clubs\' page'
        long_desc 'This will show you all the Premier League Football Clubs.'
      end

      command :results do
        title 'results'
        desc 'Returns the \'Results\' page'
        long_desc 'Results shows you all the results from the previous games.'
      end

      command :tables do
        title 'tables'
        desc 'Returns the \'Tables\' page'
        long_desc 'Tables shows you the current or previous table.'
      end

      command :transfers do
        title 'transfers'
        desc 'Returns the \'Transfers\' news page'
        long_desc 'Transfers brings you all the news of current or potential transfers.'
      end

      command :tickets do
        title 'tickets'
        desc 'Returns the \'Tickets\' page'
        long_desc 'Here you can have access to all the pages where you can but tickets to games(if available).'
      end

      command :players do
        title 'players'
        desc 'Returns the \'Players\' page'
        long_desc 'This will give you the whole list of players, which you will also be able to access their stats.'
      end

      command :managers do
        title 'managers'
        desc 'Returns the \'Managers\' page'
        long_desc 'This will show you the whole list of managers in the league.'
      end

      command :news do
        title 'news'
        desc 'Returns the \'News\' page'
        long_desc 'This will show all the news that is going on right now and all previous news.'
      end
    end
  end
end

# rubocop:enable Metrics/BlockLength, Layout/LineLength
