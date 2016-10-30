Rails.application.routes.draw do
  devise_for :users
  resources :goods
  root 'goods#index'
  namespace :admin do
    resources :goods
    member do
      post :Publish
      post :Hide
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
