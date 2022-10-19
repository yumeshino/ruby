Rails.application.routes.draw do
  get 'user/new'

  get 'user/create'

  get 'user/me'

  get 'home/index'

  get 'sessions/create'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]
						
end
