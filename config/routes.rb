Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: [:show] do
  #   # nested resource for posts
  #   resources :activities, only: [:show, :index]
  # end

  root "welcome#index"

  get 'signup', to: 'users#new' #, as: 'signup'

  get '/login', to: 'sessions#new' #, as: 'login 
  post '/login', to: 'sessions#create' #, as: 'login
  
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  
  get '/users/:id/activities', to: 'users#user_activities', as: 'user_activities'

  resources :users do
    resources :activities 
  end

  resources :activities
  resources :reservations
  resources :reviews


#   get '/add_funds', to: 'users#add_funds', as: 'add_funds'

#   get '/reviews/new/:activity_id', to: 'reviews#new', as: 'new_review'

end