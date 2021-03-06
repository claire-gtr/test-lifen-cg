Rails.application.routes.draw do
  root to: 'workers#index'
  resources :workers, only: [:new, :create, :update, :edit]
  resources :shifts, only: [:index, :show, :new, :create, :edit, :update]
end
