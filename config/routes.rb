Rails.application.routes.draw do

  # analyses routes
  resources :analyses do
    collection do
      get :generate_data
    end
  end

  #devise routes
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  # loto7s routes
  resources :loto7s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #services routes
  # Defines the root path route ("/")
  root 'services#index'
  get 'services/show', to: 'services#show'
  get 'services/search', to: 'services#search'
  get 'services/data', to: 'services#data'
  get 'services/analysis_results', to: 'services#analysis_results'
  get 'services/previous_data', to: 'services#previous_data'
end
