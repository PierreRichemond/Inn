Rails.application.routes.draw do
  root to: 'pages#home'

  resources :rooms, only: [:index, :show]
end
