Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]

    # collection do
    #   get 'top', to: "restaurants#top"
    # end

    # member do
    #   get 'chef', to: "restaurants#chef"
    # end
  end
end
