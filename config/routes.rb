Rails.application.routes.draw do
  get  '/comments', to: 'comments#new'
  post '/comments', to: 'comments#create'
 delete '/comments', to: 'comments#destroy'
  
  
  
  
  get 'topics/new'
  get 'topics/index'
  get 'sessions/new'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'pages#index'
 get 'pages/help'
 
 get    '/login', to: 'sessions#new'
 post   '/login', to: 'sessions#create'
 delete '/logout', to: 'sessions#destroy'
 
 resources :users
 resources :topics 
 resources :comments
 
 get 'favorites/index'
 post '/favorites', to: 'favorites#create'
 delete '/favorites', to: 'favorites#destroy'
 
 end
 
 
