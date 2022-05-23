Rails.application.routes.draw do


  get 'home/index'
  get 'other/index'

  get '/home/turbo_frame_form' => 'home#turbo_frame_form', as: 'turbo_frame_form'
  post '/home/turbo_frame_submit' => 'home#turbo_frame_submit', as: 'turbo_frame_submit'

  root to: "home#index"




  resources :items

  

 # resources :line_items

 # resources :carts
 

  resources :lignes_commandes
  resources :articles
  resources :commandes
  resources :clients
  resources :produits
  devise_for :users
  resources :friends

 # get 'home/index'
 # get 'home/about'
 # root 'home#index'
#  root 'home#index'
  
   devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end







  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
