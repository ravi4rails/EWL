Rails.application.routes.draw do
  root 'home#index'
  resources :accounts
  
  get '/update_account' => "accounts#update_account"
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations', 
    passwords: 'users/passwords',
    confirmations: 'users/confirmations' 
  }
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
