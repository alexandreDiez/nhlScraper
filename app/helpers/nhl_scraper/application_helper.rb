module NhlScraper
  module ApplicationHelper

  	require 'logger'

		class MyLog
		  def self.log
		    if @logger.nil?
		      @logger = Logger.new('log/stats.log', File::APPEND)
		      @logger.level = Logger::DEBUG
		      @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
		    end
		    @logger
		  end
		end

  end
end
