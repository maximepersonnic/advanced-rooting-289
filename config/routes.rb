Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
    # collection do                       # collection => no restaurant id in URL
    #   get 'top'                       # RestaurantsController#top
    # end
    # member do                             # member => restaurant id in URL
    #   get 'chef'                          # RestaurantsController#chef
    # end
  end

end
