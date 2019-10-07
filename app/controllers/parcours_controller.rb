class ParcoursController < ApplicationController
  def index
  	@parcour = Parcour.all
  end
end
