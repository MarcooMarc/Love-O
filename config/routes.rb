Rails.application.routes.draw do 

  devise_for :admins
  mount RailsAdmin::Engine => '/GodMode', as: 'rails_admin'
  
  root to: 'homes#index'
  get 'workshops', to: 'workshops#index'
  get 'monworkshops', to: 'workshops#new'

  get 'lesbentos', to: 'bentos#index', as: 'bentos'
  get 'monparcours', to: 'parcours#index', as: 'parcours'
  get 'contacts', to: 'contacts#new', as: 'contact'
  get 'ateliers', to: 'ateliers#index', as: 'ateliers'
  
  get 'commander', to: 'commandes#index'
  get 'macommande', to: 'commandes#new', as: 'macommande'

  resources :commandes, only: [:create, :destroy]

  resources :workshops, only: :create
  resources :contacts, only: :create

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
