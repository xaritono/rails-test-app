class TestMailer < ApplicationMailer
  def send_email(address, message)
    @message = message

    mail(to: address, subject: 'Rails Test App: Test email')
  end
end
