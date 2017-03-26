class MailsController < ApplicationController
  def create
    TestMailer.send_email(mail_params[:email], mail_params[:message]).deliver_later

    redirect_to root_path, notice: 'Email Sent'
  end

  private

  def mail_params
    params.require(:mail).permit(:email, :message)
  end
end
