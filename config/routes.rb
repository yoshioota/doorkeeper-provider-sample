Rails.application.routes.draw do

  resources :articles

  devise_for :users

  use_doorkeeper

  root 'welcome#index'
end
