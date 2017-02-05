module NhlScraper
  module Pages
    class DayPage < Page
      include ApplicationHelper

      def initialize
        super url
      end

      def display_info
        doc = download
        link = []
        doc.css("li.nhl-scores__list-item").each do |game|
          MyLog.log.debug game
          link << game.css("a").map { |link| link['href']}
        end
        link
      end

      private

        def download
          @extractor.extract
        end

        def url
          "https://www.nhl.com/scores"
        end
    end
  end
end
