Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end

  namespace :public do
    resources :items, only: [:index, :show]
    resources :customers, only: [:show, :edit ,:unsubscribe]
    resources :cacustomerrt_itemsonly, only: [:index]
    resources :orders, only: [:new, :index, :show, :complete]
    resources :addresses, only: [:index, :edit]
  end

  devise_for :customers, controllers: {
   sessions: "customers/"
  }

  devise_for :admins, controllers: {
   sessions: "admins/"
   }

  namespace :admin do
    get 'homes/top'
  end

  namespace :admin do
    resources :items, only: [:index, :new, :show, :edit]
    resources :genres, only: [:index, :edit]
    resources :customers, only: [:index, :show, :edit]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
