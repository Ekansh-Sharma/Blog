class UserMailer < ApplicationMailer
  def send_message(user)
    @user = user
    mail to: ENV['GMAIL'], subject: "Message from Ekansh Sharma Personal Web #{@user.subject}"
  end
end
