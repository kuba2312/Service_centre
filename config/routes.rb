Rails.application.routes.draw do
  get 'sessions/new'

  resources :requests do
    resources :topics, only: [:new, :create, :edit, :update, :show, :destroy] do
      resources :posts, only: [:new, :create, :edit, :update, :show, :destroy]
    end
  end
  resources :employees
  root to: 'static#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/requests/:id/follow', to: 'requests#follow'
  get '/requests/:id/unfollow', to: 'requests#unfollow'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
