Rails.application.routes.draw do

  root :to => 'application#home', :as => :home


  devise_for :users, :controllers => { :registrations => "user/registrations" }

  devise_scope :user do
    authenticated :user do
      root :to => 'application#home'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end


  resources :user, :controller => "users"
  resources :users, only: [:index]

end
