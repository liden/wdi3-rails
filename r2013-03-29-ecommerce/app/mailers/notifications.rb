class Notifications < ActionMailer::Base
  def login_message(user)
    @user = user
    mail :to => user.email, :from => 'lara.iden@gmail.com', :subject => "I just noticed you logged in..."
  end
end