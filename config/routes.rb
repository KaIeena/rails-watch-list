Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # get '/lists', to: 'lists#index'
  # get '/lists/:id', to: 'lists#show'
  # get '/lists/new', to: 'lists#new'
  # post '/lists', to: 'lists#create'

  # get '/lists/:id/bookmarks/new', to: 'bookmark#new'
  # post '/lists/:id/bookmarks', to: ''
  # delete '/bookmarks/:id', to: ''
end
