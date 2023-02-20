Rails.application.routes.draw do
  root 'posts#home'

  resources :posts
  delete 'posts/:id/remove_image', to: 'posts#remove_image', as: 'remove_image_post'
  # delete 'posts/:id/remove_imageTwo', to: 'posts#remove_imageTwo', as: 'remove_imageTwo_post'
  delete 'posts/:id/remove_pictures', to: 'posts#remove_pictures', as: 'remove_pictures_post'

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
