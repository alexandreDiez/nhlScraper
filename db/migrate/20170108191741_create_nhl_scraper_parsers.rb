class CreateNhlScraperParsers < ActiveRecord::Migration
  def change
    create_table :nhl_scraper_parsers do |t|

      t.timestamps null: false
    end
  end
end
