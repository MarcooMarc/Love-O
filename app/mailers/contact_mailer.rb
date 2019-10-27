class ContactMailer < ApplicationMailer
	
  layout 'mailer'
 
  def contact_form(contact)
    @contact = contact
    @to = "marc.zarb@free.fr"
 
    mail(to: @to, subject: "Nouveau contact depuis le site") do |format|
      format.html
    end
  end
end
