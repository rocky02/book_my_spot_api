Rails.application.routes.draw do
  resources :controllers

  namespace :api do
    resource :users
    resources :addresses
    
    resources :parking_spots do
      collection do
        get :search
      end
    end
    
    resources :reservation
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
