Rails.application.routes.draw do
  
  root :to => 'home#index'
  resources :rad_guys
  
end
