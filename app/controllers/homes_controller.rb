class HomesController < ApplicationController
  def index
    @home = Home.all
    @bento = Bento.all.where('id < 4')
  end


end


