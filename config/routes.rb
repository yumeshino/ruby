Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :users, only: %i[new create]
  resources :boards
  resources :comments, only: %i[create destroy]
						
end
