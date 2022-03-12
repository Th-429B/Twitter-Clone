Rails.application.routes.draw do
  
    # Somehow adding it to config/environment/development does not work.
    # Rails.application.routes.default_url_options[:host] = "https://7a8543eb0dae4eb48010c8df056abf29.vfs.cloud9.us-east-1.amazonaws.com/"

  get 'sessions/new'

  # binds the get request to this page
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  

  resources :microposts
  resources :users
  resources :account_activations, only: [:edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
