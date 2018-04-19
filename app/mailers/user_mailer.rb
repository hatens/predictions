class UserMailer < ApplicationMailer
  default from: "systemmessage@realbets254.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'support@realbets254.com',
         subject: "#{name} On Realbets254 website")
  end
end