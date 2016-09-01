Rails.application.routes.draw do

  resources :tickets do
    member do
      get 'review'
      patch 'review_update'
    end
  end

  root :to => 'home#index', :as => :home


  devise_for :users, :controllers => { :registrations => "user/registrations" }

  devise_scope :user do
    authenticated :user do
      root :to => 'home#index'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end


  resources :user, :controller => "users"
  resources :users, only: [:index]

end
