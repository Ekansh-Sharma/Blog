class HomeController < ApplicationController
  def index
  end

  def send_mail
    begin
      @user = UserMail.new(safe_params)
      UserMailer.send_message(@user).deliver
    rescue => e
      @error = e.message
    end
    respond_to do |format|
      format.js
    end
  end

  private

  def safe_params
    params.permit(:name, :email, :subject, :message)
  end
end
