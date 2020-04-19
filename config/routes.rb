Rails.application.routes.draw do
  resources :user_chats
  resources :messages
  resources :chats
  resources :users
  
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"

  get "/auto_login", to: "auth#auto_login"
  
  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
