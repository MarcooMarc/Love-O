class AteliersController < ApplicationController
  def index
    @atelier = Atelier.all
  end

  def new
    @atelier = Atelier.new
  end

  def create
    infos = {
      email: params[:participant][:email],
      name: params[:participant][:name],
      surname: params[:participant][:surname],
      lieu: params[:participant][:lieu],
      phonenumber: params[:participant][:phonenumber],
      livraison: params[:participant][:livraison]
    }

    @atelier = atelier.new(commande_params)
    participant = Participant.find_or_create(params[:participant][:email])
    @atelier.participant = participant
    @atelier.save
    flash[:success] = "Votre inscription est validée vous allez recevoir un e-mail"
    redirect_to root_path
  end

  private

  def customer_params
    params.require('participant').permit(:name)
    params.require('participant').permit(:surname)
    params.require('participant').permit(:email)
    params.require('participant').permit(:phonenumber)
  end
end