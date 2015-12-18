Rails.application.routes.draw do


  get 'items/create'

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users, only: [:show] do
    resources :items, only: [:create]
  end
  root to: "welcome#index"
end
