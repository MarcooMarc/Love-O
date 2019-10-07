class HomesController < ApplicationController
  def index
  	@home = Home.all
  	@bento = Bento.all
  end
end
