Rails.application.routes.draw do
  get 'parcours/index'
  get 'homes/index'
  get 'bentos/index'
  get 'home/index'
  get 'ateliers/index'
  mount RailsAdmin::Engine => '/GodMode', as: 'rails_admin'

  get 'home', to: 'homes#index', as: 'homes'
  get 'ateliers', to: 'ateliers#index', as: 'ateliers'
  get 'lesbentos', to: 'bentos#index', as: 'bentos'
  get 'monparcours', to: 'parcours#index', as: 'parcours'
  get 'contact', to: 'contact#show', as: 'contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
