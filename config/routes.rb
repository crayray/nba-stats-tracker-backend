Rails.application.routes.draw do
  resources :user_teams
 #sign in / sign out / login boolean to confirm that user is authenticated 
 post '/login', to: 'sessions#create'
 delete '/logout', to: 'sessions#destroy'
 get '/logged_in', to: 'sessions#is_logged_in?'
   
  
 #users can create a new user, see that user, and all other users(api?) might need edit, if user needs to update info
 resources :users, only: [:create, :show, :index]
  
  root to: "static#home"
end