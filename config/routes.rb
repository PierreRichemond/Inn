Rails.application.routes.draw do
  scope "(:locale)", locale: /fr|en/ do
    root to: 'pages#home'
    resources :rooms, only: [:index]
    resources :bookings, only: [:show, :create] do
  resources :payments, only: :new
end
    resources :activities, only: [:index, :show]
    get '/tagged', to: "activities#tagged", as: :tagged
    resources :messages
    devise_for :users
  end
end
