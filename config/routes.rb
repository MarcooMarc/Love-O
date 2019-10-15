Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: 'registrations' }
 
  mount RailsAdmin::Engine => '/GodMode', as: 'Admin'


  root to: 'homes#index'
  get 'workshops', to: 'ateliers#index', as: 'ateliers'
  get 'lesbentos', to: 'bentos#index', as: 'bentos'
  get 'monparcours', to: 'parcours#index', as: 'parcours'
  get 'contact', to: 'contact#index', as: 'contact'
  get 'commander', to: 'commandes#index'
  get 'macommande', to: 'commandes#new', as: 'macommande'

  resources :commandes, only: :create

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
