Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    collection do                       # collection => no restaurant id in URL
      get 'top'                       # RestaurantsController#top
    end
    member do                             # member => restaurant id in URL
      get 'chef'                          # RestaurantsController#chef
    end
  end

end
