
module NhlScraper

  require 'capybara'
  require 'capybara/poltergeist'

  class Extractor
     include ApplicationHelper
      #include Capybara::DSL
      Capybara.register_driver :poltergeist do |app|
        Capybara::Poltergeist::Driver.new app,
          phantomjs_options: ['--load-images=no','--ignore-ssl-errors=yes'],
          js_errors: false,
          inspector: false,
          debug: false
      end

      attr_accessor :page

      def initialize(url)
        MyLog.log.debug "Extractor url : #{url}"
        Capybara.default_driver = :poltergeist
        @browser = Capybara.current_session
        @url = url
      end

      #Return the page info
      def extract
        @browser.visit @url
        Nokogiri::HTML(@browser.html)
      end

  end
end
