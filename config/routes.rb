require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  resources :statuses, only: [:show]
  resources :mails, only: [:create]

  root to: 'statuses#index'
end
