Rails.application.routes.draw do
  scope "(:locale)", locale: /fr|en/ do
    root to: 'pages#home'
    resources :rooms, only: [:index]
    resources :activities, only: [:index, :show]
    get '/tagged', to: "activities#tagged", as: :tagged
    get '/contact', to: "pages#contact"
    get '/booking', to: "rooms#booking", as: :booking

  end
end
