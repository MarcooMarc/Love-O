Rails.application.routes.draw do
  get 'commandes/index'
 
  mount RailsAdmin::Engine => '/GodMode', as: 'rails_admin'


  root to: 'homes#index'
  get 'workshops', to: 'ateliers#index', as: 'ateliers'
  get 'lesbentos', to: 'bentos#index', as: 'bentos'
  get 'monparcours', to: 'parcours#index', as: 'parcours'
  get 'contact', to: 'contact#index', as: 'contact'
  get 'commander', to: 'commandes#index', as: 'commandes'
  get 'macommande', to: 'commandes#new', as: 'macommande'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
