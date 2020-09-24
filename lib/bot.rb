module PremierLeague
  class Bot < SlackRubyBot::Bot
    help do
      title 'Premier League App'
      desc 'This app brings you the relative information on the Premier League'

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
    end
  end  
end  