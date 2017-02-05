module NhlScraper
  class Engine < ::Rails::Engine
    isolate_namespace NhlScraper

    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += Dir["#{config.root}/lib/**/*.rb"]

  end
end
