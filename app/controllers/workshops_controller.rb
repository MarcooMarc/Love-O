class WorkshopsController < ApplicationController
  def index
    @workshop = Workshop.all
    @atelier = Atelier.all
  end

  def new
    @workshop = Workshop.new
  end

  def create
    @workshop = Workshop.new
    customer = Participant.find_or_create(params[:participant][:email], params[:participant][:name], 
    params[:participant][:surname], params[:participant][:phonenumber])
    @workshop.save
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

