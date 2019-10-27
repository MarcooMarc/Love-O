class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(params[:participant])
    @participant.save
  end

private

  def userparams
    params.require(:participant).permit(:content)
  end
end


