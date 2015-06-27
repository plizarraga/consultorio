Rails.application.routes.draw do
  get 'test/index'

  root 'home#index'
  resources :citas
  resources :pacientes
  resources :test
  devise_for :usuarios
end
