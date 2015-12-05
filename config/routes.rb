Rails.application.routes.draw do
  resources :favorite_pets
  get 'home/index'
  root 'home#index'
  resources :users do 
    post 'sign_in', on: :collection
    get 'favorite_pets'
  end
  resources :pets do
    post 'add_favorite'
    delete 'remove_favorite'
  end
end
