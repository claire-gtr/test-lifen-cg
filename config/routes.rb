Rails.application.routes.draw do
  resources :workers, only: [:index, :new, :create, :update, :edit]
  resources :shifts, only: [:index, :new, :create]
end
