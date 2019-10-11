class UsersController < ApplicationController
   def new
     @user = User.new
   end

   def create
     @user = User.new(params[:user])
     @user.save
   end

private

  def userparams
    params.require(:user).permit(:content)
  end	
end