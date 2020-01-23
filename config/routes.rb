Rails.application.routes.draw do
  resources :user_teams
  # resources :sessions
  # resources :sessions, only: [:is_logged_in, :create, :logout]
 #sign in / sign out / login boolean to confirm that user is authenticated 
 post '/login', to: 'sessions#create'
 delete '/logout', to: 'sessions#logout'
 get '/logged_in', to: 'sessions#is_logged_in'
#  get '/login', to: 'sessions#create'  
#  get '/logout', to: 'sessions#logout'
  
 resources :users, only: [:create, :show, :index]
  
  root to: "static#home"
end