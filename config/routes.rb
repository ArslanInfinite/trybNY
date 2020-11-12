Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :activities
  resources :reservations
  resources :reviews

  #get 'authors/:id/posts', to: 'authors#posts_index'
  #get 'authors/:id/posts/:post_id', to: 'authors#post'

  get '/users/:id/activities', to: 'users#user_activities', as: 'user_activities'

  get "/welcome", to: "users#welcome", as: "welcome"

  get '/mainpage', to: 'sessions#mainpage', as: 'mainpage'

  get '/login', to: 'sessions#new', as: 'login'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/add_funds', to: 'users#add_funds', as: 'add_funds'

  get '/reviews/new/:activity_id', to: 'reviews#new', as: 'new_review'
end
