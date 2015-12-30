Rails.application.routes.draw do



  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end
  root to: "welcome#index"
end
