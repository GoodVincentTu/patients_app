Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :patients do
  	member do
  		get 'location/show' => 'locations#show'
  	end
  end

  root to: 'patients#index'
end
