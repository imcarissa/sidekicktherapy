Rails.application.routes.draw do
  resources :goals
 
  root "visits#index"
  
  resources :visits
 
 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
