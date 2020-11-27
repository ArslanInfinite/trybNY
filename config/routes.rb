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

  get '/auth/:provider/callback' => 'sessions#google'

  resources :users do
    resources :activities #show or index, new 
    resources :reservations 
  end

  resources :activities
  resources :reservations
  resources :reviews

  #users/:id/reservations/new


# get '/reviews/new/:activity_id', to: 'reviews#new', as: 'new_review'

end