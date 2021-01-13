Rails.application.routes.draw do
  resources :goals
  resources :users, only: [:show, :create] do
    resources :goals, only: [:index, :create]
  end


  post '/update_goal', to: 'goals#add_to_goal'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  get '/user_is_authed', to: 'auth#user_is_authed'
end
