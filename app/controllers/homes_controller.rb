class HomesController < ApplicationController
	  skip_before_action :authenticate_user!, only: :index

  def index
  	@home = Home.all
  	@bento = Bento.all
  end
end
