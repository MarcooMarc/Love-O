class ParcoursController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

  def index
  	@parcour = Parcour.all
  end


  
end
