Rails.application.routes.draw do
  devise_for :admins
  resources :loto7s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "loto7s#index"
end
