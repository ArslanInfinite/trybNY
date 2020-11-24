Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: [:show] do
  #   # nested resource for posts
  #   resources :activities, only: [:show, :index]
  # end

  root "welcome#index"

  get 'signup', to: 'users#new'

  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create'
  
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  
  get '/users/:id/activities', to: 'users#user_activities', as: 'user_activities'

  resources :users do
    resources :activities 
  end

  resources :activities
  resources :reservations
  resources :reviews

  #get 'authors/:id/posts', to: 'authors#posts_index'
  #get 'authors/:id/posts/:post_id', to: 'authors#post'

#   get "/welcome", to: "users#welcome", as: "welcome"

#   get '/mainpage', to: 'sessions#mainpage', as: 'mainpage'

#   get '/login', to: 'sessions#new', as: 'login'

#   get '/add_funds', to: 'users#add_funds', as: 'add_funds'

#   get '/reviews/new/:activity_id', to: 'reviews#new', as: 'new_review'

end