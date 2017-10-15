#This is the routes file for the application. URLs are mapped to the correct controller and the controller method. This in turn 
# leads the URL to the correct viewing page.

Rails.application.routes.draw do
  


  root 'static_pages#home'
  
  get  '/donate',    to: 'static_pages#donate'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  
  get  '/time', to: 'chart#time'
  get  '/feed', to: 'chart#feed'
  
  get '/signup', to: 'users#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end