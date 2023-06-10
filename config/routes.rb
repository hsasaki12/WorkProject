Rails.application.routes.draw do
  devise_for :users
  root 'quests#index'
  get '/applications', to: 'quests#index', as: 'applications'

  resources :quests do
    resources :applications, only: [:new, :create]
  end

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  resources :applications, only: [:new, :create]
end