class ClientMailer < ActionMailer::Base
  #default from: ENV['username']
  def deliver_document(user, email, document)
    @user=user
    #attachments['CATALOGO_EL_FRESNO_2015.pdf'] = File.read('public/catalogo.pdf')
    mail to: email,
         subject: "FRESNO::VENTAS - " << document, from: user.email


  end
end
