class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email

    @user=User.find(params[:user_id])

    mail(to:@user.email, subject: 'Welcome to My Awesome Site')


  end
end
