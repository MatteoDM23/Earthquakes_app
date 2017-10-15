Rails.application.routes.draw do
  


  root 'static_pages#home'
  
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  
  get  '/time', to: 'chart#time'
  get  '/feed', to: 'chart#feed'
  
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users

end