module NhlScraper
  module Pages
    class StatPage < Page
      include ApplicationHelper

        def initialize
          super url
        end

  			def display_info
          doc = download
          tab_stat = []
  				@doc.css("tr.standard-row").each do |player|
  		      playerStats = []
  					player.css("td").each do |info|
  		      	playerStats << info.text
  		      end
              tab_stat << playerStats
  				end
          tab_stat
  			end

        private

          def download
            @extractor.extract
          end

          def url
            "http://www.nhl.com/stats/player?aggregate=0&gameType=2&report=skatersummary&pos=S&reportType=season&seasonFrom=20162017&seasonTo=20162017&filter=gamesPlayed,gte,1&sort=points,goals,gamesPlayed"
          end

    end
  end
end
