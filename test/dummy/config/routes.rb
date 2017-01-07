Rails.application.routes.draw do

  mount NhlScraper::Engine => "/nhl_scraper"
end
