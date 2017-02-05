class CreateNhlScraperStats < ActiveRecord::Migration[5.0]
  def change
    create_table :nhl_scraper_stats do |t|

      t.timestamps
    end
  end
end
