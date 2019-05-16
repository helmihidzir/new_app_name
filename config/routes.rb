Rails.application.routes.draw do
  resources :users

  match '/templates' => 'users#create', via: :post

  require 'sidekiq/web'
  mount Sidekiq::Web=>'/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
