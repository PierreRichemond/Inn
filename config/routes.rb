Rails.application.routes.draw do
  scope "(:locale)", locale: /fr|en/ do
    root to: 'pages#home'
    resources :rooms
    resources :booking_previews, only: [:show, :create] do
      resources :payments, only: :new
    end
    resources :bookings
    resources :activities, only: [:index, :show]
    get '/tagged', to: "activities#tagged", as: :tagged
    resources :messages
    devise_for :users
    mount StripeEvent::Engine, at: '/stripe-webhooks'
  end
end
