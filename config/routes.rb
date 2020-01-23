Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root :to => 'home#index'
  

  resources :users
  resources :user_teams

  post "/signup", to: "auth#create"


end
