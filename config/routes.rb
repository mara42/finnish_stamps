Rails.application.routes.draw do
  get 'stamp/index'
  resources :users
  get 'stamp/show'
  get 'stamp/stats'

  resources :user_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
