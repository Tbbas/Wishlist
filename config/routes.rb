Rails.application.routes.draw do
  devise_for :admins
  get 'users/new'
  resources :users

  resources :wish_lists do
    resources :wish_items
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "wish_lists#index"
end
