NhlScraper::Engine.routes.draw do

	resources :scrapers, only: [:index, :create, :show, :update, :destroy]	

end
