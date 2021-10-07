Rails.application.routes.draw do
  root to: 'pages#home'

  resources :rooms, only: [:index]
  resources :activities, only: [:index, :show]
end
