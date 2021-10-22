Rails.application.routes.draw do
  scope "(:locale)", locale: /fr|en/ do
    root to: 'pages#home'
    resources :rooms, only: [:index]
    resources :activities, only: [:index, :show]
    get '/tagged', to: "activities#tagged", as: :tagged
    get '/contact', to: "contact_forms#new", as: :contact
    post '/contact', to: 'contact_forms#create'
  end
end
