Rails.application.routes.draw do

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'signup' => 'users#new'

  root 'welcome#index'

  resources :posts, only: [:index, :show]

  resources :users do
    member do
      get :following, :followers
    end
    resources :posts, except: [:index]
  end

  resources :relationships,  only: [:create, :destroy]


  get 'following' => 'users#following'
  get 'followers' => 'users#followers'

end
