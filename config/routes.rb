Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  resources :loto7s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'services#index'
  get 'services/show', to: 'services#show'
  get 'services/search', to: 'services#search'
  get 'services/data', to: 'services#data'
end
