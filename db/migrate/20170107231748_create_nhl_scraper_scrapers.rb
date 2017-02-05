class CreateNhlScraperScrapers < ActiveRecord::Migration[5.0]
  def change
    create_table :nhl_scraper_scrapers do |t|

      t.timestamps
    end
  end
end
