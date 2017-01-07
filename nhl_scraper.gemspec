$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nhl_scraper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nhl_scraper"
  s.version     = NhlScraper::VERSION
  s.authors     = ["AlexandreDiez"]
  s.email       = ["alexandrediezbreton@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of NhlScraper."
  s.description = "TODO: Description of NhlScraper."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
