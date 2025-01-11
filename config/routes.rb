Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  root to: 'posts#index'

  resources :users, only: [:show] # Add route for profile page

   # Resources for posts, including nested comments
   resources :posts do
    # Nested resource for comments on posts
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
end
