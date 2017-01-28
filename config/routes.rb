Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Remember adding nested routes (schools - reviews : connected)
  resources :schools do 
  	resources :reviews
  end
  root 'schools#index'
end
