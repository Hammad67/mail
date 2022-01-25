class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @users = params[:user]
    binding.pry
    mail(to: @users.name, subject: 'Welcome to My Awesome Site')


  end
end
