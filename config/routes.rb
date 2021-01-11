Rails.application.routes.draw do
  resources :goals
  resources :users, only: [:show, :create] do
    resources :goals, only: [:index]
  end

  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  get '/user_is_authed', to: 'auth#user_is_authed'
end
