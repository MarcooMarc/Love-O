class CommandesController < ApplicationController
  def index
  	@commande = Commande.all
  end

  def create
    @user = User.new(params[:user])
    @user.save
  end
end
