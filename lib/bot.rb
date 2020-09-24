module PremierLeague
  class Bot < SlackRubyBot::Bot
    help do
      title 'Premier League Bot'
      desc 'This provides all information about the Premier League'

      command :clubs do
        title 'clubs'
        desc 'Returns the url of the clubs'
        long_desc 'Returns the url of the clubs'
      end
    end
  end  
end  