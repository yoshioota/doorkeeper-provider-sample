Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      get 'user' => 'user#index'

      resources :articles
    end
  end

  resources :articles

  use_doorkeeper

  devise_for :users

  root 'welcome#index'
end
