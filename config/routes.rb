Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create, :index, :show]
  end
  root to: 'restaurants#index'
end
