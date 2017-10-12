Rails.application.routes.draw do
  
  get 'dashboards/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  resources :companies do
    resources :comments, only: [:create, :destroy]
  end

  root 'companies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
