
module NhlScraper
  module Pages
    class Page
  			include ApplicationHelper
        attr_accessor :extractor

        def initialize url
          @extractor = Extractor.new(url)
        end

        def display_info
          raise NotImplementedError, 'Ask the subclass'
        end
    end
  end
end
