Rails.application.routes.draw do
  resources :leagues
  root to: 'leagues#index'
end
