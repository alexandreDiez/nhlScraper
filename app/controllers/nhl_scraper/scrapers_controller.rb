#require 'pages/page'
#require 'pages/statPage'

module NhlScraper

  class ScrapersController < ApplicationController
  	include ApplicationHelper

  	def index
  		 MyLog.log.debug "Page stat"
       render :json => Scraper.new(Pages::StatPage.new).display_info
  	end

    def show
      MyLog.log.debug "Page game du jour"
      render :json => Scraper.new(Pages::DayPage.new).display_info
    end
  end
end
