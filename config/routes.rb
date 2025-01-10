Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  root to: 'home#index'
end
