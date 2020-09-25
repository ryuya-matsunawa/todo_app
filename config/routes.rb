Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api, format: 'json' do
    resources :todos, only: [:index, :create, :update]
  end
end
