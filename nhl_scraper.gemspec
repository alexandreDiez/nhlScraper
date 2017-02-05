$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
#require "nhl_scraper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nhl_scraper"
  s.version     = '0.0.1'
  s.authors     = ["AlexandreDiez"]
  s.email       = ["alexandrediezbreton@gmail.com"]
 # s.homepage    = "TODO"
  s.summary     = "Scraping nhl.com"
  s.description = "Scraping nhl.com "
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
