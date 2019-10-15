class AteliersController < ApplicationController

  def index
    @atelier = Atelier.all
  end
end
