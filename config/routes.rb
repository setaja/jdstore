Rails.application.routes.draw do
  root 'goods#index'
  namespace :admin do
  resources :goods do
    member do
      post :publish
      post :hide
    end
  end
  end
  devise_for :users
  resources :goods
  resources :goods do
    member do
      post :add_to_cart
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
