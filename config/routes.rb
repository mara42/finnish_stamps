Rails.application.routes.draw do
  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

  root 'static_pages#welcome'
  get 'about' => 'static_pages#about'

  get 'stamps' => 'stamp#index'
  get 'stamp/show'
  get 'printing_graph' => 'stamp#stats'

  get 'create_account' => 'users#new'

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
