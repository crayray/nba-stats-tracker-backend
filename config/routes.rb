Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root :to => 'home#index'
  root to: "static#home"
  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_teams
      resources :sessions, only: [:create]

      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
    end
  end
end
