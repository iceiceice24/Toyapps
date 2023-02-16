Rails.application.routes.draw do
  root 'posts#home'

  resources :posts

  resources :users
  resources :users, only: [:create]
  resources :users, only: [:edit, :update]
  get '/register', to: 'users#new'
  get '/edit', to: 'users#edit'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'

  resources :sessions, only: [:create]
  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  get '/edit', to: 'sessions#edit'
  
 

end
