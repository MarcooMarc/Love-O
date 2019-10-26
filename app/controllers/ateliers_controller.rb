class AteliersController < ApplicationController
  def index
    @atelier = Atelier.all
  end

  def new
    @atelier = Atelier.new
  end

  def create
    @atelier = Atelier.new
    customer = Participant.find_or_create(params[:participant][:email])
    @atelier.save
    flash[:notice] = "Votre atelier est validée vous allez recevoir un e-mail"
    redirect_to root_path
  end

  private

  def participant_params
    params.require('participant').permit(:name)
    params.require('participant').permit(:surname)
    params.require('participant').permit(:email)
    params.require('participant').permit(:phonenumber)
  end
end