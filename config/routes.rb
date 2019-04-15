Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  get '/home' => 'home#index'
  get '/presentation' => 'home#presentation'
  get '/login' => 'home#login'
  get '/listing' => 'listing#index'
  
   
  post '/presentation', to: 'home#presentation' , via: :post
  post '/checkLogin', to: 'home#checkLogin' , via: :post

 
  
end
