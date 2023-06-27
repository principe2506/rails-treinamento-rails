Rails.application.routes.draw do
  get 'contato/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  get "sobre", to: "home#sobre"
  get "contato", to: "contato#index"
  post "contato/cadastrar", to: "contato#cadastrar"
end