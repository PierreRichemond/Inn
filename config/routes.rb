Rails.application.routes.draw do
  root to: 'pages#home'

  resources :rooms, only: [:index]
  resources :activities, only: [:index, :show]
  get '/tagged', to: "activities#tagged", as: :tagged
end
