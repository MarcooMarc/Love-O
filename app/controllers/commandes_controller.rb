class CommandesController < ApplicationController
  def index
  	@commande = Commande.all
  end

  def new
  	@commande = Commande.new
  end

  def create
    @commande = Commande.new(params[:comamnde])
    user = User.find_or_create(params[:user])
    @commande.user = user
    @commande.save
  end
end
