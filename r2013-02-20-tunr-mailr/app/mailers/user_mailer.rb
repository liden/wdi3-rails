class UserMailer < ActionMailer::Base
  default :from => "lara.iden@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "localhost:3000/login"
    email_with_name = "#{@user.name} <#{@user.email}"
    mail(:to => user.email, :subject => "welcome!")
  end

end
