Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [:index, :new, :create, :show]
  end
  resources :bookmarks, only: [:destroy]
end
