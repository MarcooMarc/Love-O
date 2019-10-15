class CommandesController < ApplicationController
  #skip_before_action :authenticate_admin!, only: :index
  #skip_before_action :authenticate_admin!, only: :new
  #skip_before_action :authenticate_admin!, only: :create

  def index
    @commande = Commande.all
  end

  def new
    @commande = Commande.new
  end



  def create
    @commande = Commande.new(commande_params)
    customer = Customer.find_or_create(params[:customer][:email])
    @commande.customer = customer
    @commande.save
    flash[:success] = "Votre commande est validée vous allez recevoir un e-mail"
    redirect_to root_path
  end

  private

  def commande_params
    params.require('commande').permit(:quantités)
  end

  def customer_params
    params.require('customer').permit(:name)
    params.require('customer').permit(:surname)
    params.require('customer').permit(:email)
    params.require('customer').permit(:phonenumber)
    params.require('customer').permit(:livraison)
    params.require('customer').permit(:lieu)
  end
end
