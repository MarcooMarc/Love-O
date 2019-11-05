class CommandesController < ApplicationController
  def index
    @commande = Commande.all
  end

  def new
    @commande = Commande.new
  end

  def create
    @commande = Commande.new(commande_params)
    customer = Customer.find_or_create(params[:customer][:name], params[:customer][:surname], params[:customer][:email],
    params[:customer][:phonenumber], params[:customer][:lieu], params[:customer][:livraison])
    @commande.customer = customer
    @commande.save
    flash[:notice] = "Votre commande est validée vous allez recevoir un e-mail"
    redirect_to root_path
  end

  def destroy
    @commande = Commande.find(params[:id])
    @commande.destroy
  end

  private

  def commande_params
    params.require('commande').permit(:quantités)
  end

  def customer_params
    params.require('customer').permit(:name, :surname, :email, :phonenumber, :livraison, :lieu)
  end
end
