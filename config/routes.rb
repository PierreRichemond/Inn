require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Sidekiq::Web => '/sidekiq'
  scope "(:locale)", locale: /fr|en/ do
    root to: 'pages#home'
    resources :rooms
    resources :booking_attempts, only: [:show, :create] do
      resources :payments, only: :new
    end
    resources :bookings
    resources :activities, only: :index
    get '/tagged', to: "activities#tagged", as: :tagged
    resources :messages
    devise_for :users
    mount StripeEvent::Engine, at: '/stripe-webhooks'
    match "/404", to: "errors#not_found", via: :all
    match "/422", to: "errors#unacceptable", via: :all
    match "/500", to: "errors#internal_server_error", via: :all
    get '/sitemap.xml' => 'sitemaps#index', defaults: { format: 'xml' }
    get "/robots.:format", to: "pages#robots"
  end
end
