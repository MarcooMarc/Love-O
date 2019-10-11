class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def order
  	@customer = params[:customer]

    mail to: @customer.email, subject:'Votre commande LoveOriginKitchen'
  end
end
