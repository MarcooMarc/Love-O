class AteliersController < ApplicationController
	  skip_before_action :authenticate_user!, only: :index

  def index
    @atelier = Atelier.all
  end
end
