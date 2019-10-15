class BentosController < ApplicationController
	  #skip_before_action :authenticate_user!, only: :index

  def index
    @bento = Bento.all
  end
end
