class RegistrationsController < ApplicationController

  
  protected

  def one_admin_registered?
    if Admin.count == 1
      if user_signed_in?
        redirect_to GodMode_path
      else
        redirect_to root_path
      end
    end  
  end
end
