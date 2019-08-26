Rails.application.routes.draw do

  resource :users
  resources :addresses
  
  resources :parking_spots do
    collection do
      get :search
    end
  end
  
  resources :reservation
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
