class UserMailer < ActionMailer::Base


  default from: "pae.oconnor@gmail.com"

   def registration_confirmation(id)
    @user = User.find(id)
    mail to: @user.email, subject: "Welcome to our site"
  end

  def password_changed(id)
    @user = User.find(id)
    mail to: @user.email, subject: "Your password has changed"
  end
end