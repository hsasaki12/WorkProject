Rails.application.routes.draw do
  devise_for :users
  root 'quests#index'
  resources :quests do
    resources :applications, only: [:new, :create]
  end
  resources :applications, only: [:index, :show, :update]
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end