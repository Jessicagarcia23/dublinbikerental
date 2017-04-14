Rails.application.routes.draw do
  resources :products
  resources :products
  resources :orders
  #get 'sessions/new'

  get 'users/new'

  get 'static_pages/home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact_us'
  
  get 'cat' => 'products#index'
  
  get 'signup' => 'users#new'
  
  # get 'phoenixAdmin' => 'static_pages#phoenixAdmin'
  
  get 'catAdmin' => 'products#catAdmin'
  
  # get 'userListing' => 'users#phoenixIndex'
  
  get 'accInfo' => 'sessions#accInfo'
  
  get 'orders' => 'orders#index'
  
  # get 'phoenixList' => 'orders#phoenixIndex'
  
  get 'login'=> 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

end
