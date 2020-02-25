class HomesController < ApplicationController
  def index1
    @home = Home.all
    @bento = Bento.all.where('id < 4')
  end

  def index2
  	@parcour = Parcour.all
  end

end


